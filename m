Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123942F30
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755491394; cv=none; b=TNh3WtQ1XTDjd0uAoPtJRPT/v0g+r0ZNYuESGCenDL8k6iLvWaPRRz/nmZxiEzL7fLXito1VbCjBwNXykEA8N9GkDtrI+Eb6NaP5TBs3lQXrzBsmFUQrGyOndtZT2SpEvcben4dL3uMoO39JO9a+1cb5M75bJt+DLcoB62Vt8BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755491394; c=relaxed/simple;
	bh=pWMUA/bLCRsKbvyt+UwrLpVLHyPbmsORkHGqhdeAEfQ=;
	h=To:Subject:From:Message-Id:Date; b=R6FJBHL6Jk+EEelydMd5uHgoFIWe/L0wEAFgnnovZtgS3IWzMCJUWnF0qnuownlU5m9qtQOMRiYN5cxrCcwsJTPxAjM45b5WdxalKzamyPtxLwfDBlIxrLY50H/3+KHY0MpcfYZyddvrmIy2wxnU9qH6eGZiEDpdFDa79xVtS1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlZr0dvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlZr0dvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9903C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755491393;
	bh=pWMUA/bLCRsKbvyt+UwrLpVLHyPbmsORkHGqhdeAEfQ=;
	h=To:Subject:From:Date:From;
	b=qlZr0dvZzE/dJ3DeaM4a+3jp34ePfUuYXgTiCKOFSDwLSxW11MnM/fq6eranLpg1J
	 0EMCFlM5HaQ2igP+1Uhtb/OOiGXpSvsF5sCWT9zBH+IqmT8MHuBy/n9R0dxhvh08LA
	 2ADemr0SN6vPAsmfX+hDXaSWevBY7jB52MjIWbGlKoPxlIJeNCosznRgcdkbcQqe+2
	 WX/yO2txMfQ8yyNfXrZ15jtkBO/COpfi1mIjp2vatwPF/xkWQcBIkKOG435t+M7zd3
	 e0EbE3n2T+mQ+4WWae7wqrfpylEE2IUbeXfocwIoNQ6u4uoAdc6LbXS3SsWXQg7J3Y
	 IcUgwf2e9u85w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9623BCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175549139358.3300.10194539896920440940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88fc6f8c2e5e17d336d91ce2d92ee921e9f0ac8837208dacac267f2661d61051
Date: Mon, 18 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755491393
