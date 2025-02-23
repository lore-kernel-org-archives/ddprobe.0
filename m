Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352101C6BE
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740326934; cv=none; b=RSNvDgvs0eDnAPlwL3F/Uzl83xz03zlXPUDrMKXNElT3RjIPt8+ZlRXoNk0BDbCsGZQJVC8Vvp1y4uPQFMiQKpNM4DFxpSywOdHzGdM3mofc5+kSXj8MwIsWZMWogGjmXlmS95VK3+Aae3nwUO1YCFY8EPVKsCdJR3xfo4Bc97o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740326934; c=relaxed/simple;
	bh=QQHonm6l9lUahi+GnbL8rmLGkKXuOQKSwZjqt1RZpag=;
	h=To:Subject:From:Message-Id:Date; b=JU/6eQyIfyAqk7OFgMtDya2SsdRJPmoHaTv5H7uPKKl4SFGLtYQHSOtsFEWdNrTgl/hh8DnJSn/MxGh7aNhcM2QhMmsKpVhU63Ie08cGyOp4X6vSbhRWFZqJ90RJi5yGoo3liOWAHN+mdkar9aixkocNrJgAKOKKXwtli8vSGNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVfG0yUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVfG0yUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AD6C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 16:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740326933;
	bh=QQHonm6l9lUahi+GnbL8rmLGkKXuOQKSwZjqt1RZpag=;
	h=To:Subject:From:Date:From;
	b=aVfG0yUanqXQ2AJwPrqihE7ZPONcpgHytgZU4ye1vMlFXANumXnomugcdW5tdW/eL
	 U72PZLNA2HxbtxUf8rIyVHBEzCsxB+ojAJQXkra/1eSDVJq+d/+WH5aDama2UbdodE
	 jVGqqgOYd8SbuHEE60PZldFgeeZHn7m5Kj9LCBvwd/saWrLM+03XyH0/irbLG3AlCd
	 Qe7gntZMjSY1MNf8M5D7aE4prOqvM6mKQ1tt+cZIXz/XApxEFndw1p1DLuhsH8T4Xf
	 b3AbWSLKL0zmDXZMMbmGtb1ESUUPvipDJ622w0XDUg++/Ny4pn1sKxzJqt/2YDvrtO
	 FQy70VLaXXALA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919F6C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 16:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174032693358.6927.10203135112180790902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 050ba735805859796d9290f199a6ce8ef62ecac3714938e5132f56bd8068bb87
Date: Sun, 23 Feb 2025 16:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740326933
