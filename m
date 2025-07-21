Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29225A95C
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753070994; cv=none; b=YIUWGcP3BX2/nmj0c/ZEmAfcTx5RdyYvTfIm/oGhMY8hV7cyIt5Atu00m7RNbFriDQR5nnQxTHNRCKZLHWsgCdbfxpaZmXzUa4rGhRbflFQaddj6THzFSW/r0iwFICN9pa2rbdKsuFCvxKeqlyHGJEtgdn91Xhs/h/YO2uryc4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753070994; c=relaxed/simple;
	bh=UnkfXgvLdqEkhGcEb+Q5Im8fHYjUNIAtJ5Okq7qyuLc=;
	h=To:Subject:From:Message-Id:Date; b=JyvLmhlEudIc4WjmqzC10oXHaXPxnvT9W6708GK6b20QqyT+0kgSNnkfCzNAuO5d6Wdbhbz2IcWl3dvs6Gj6kddZqn/oX0msJIMxJ61imQkuO1Q1CFqt05k8hz/3t/AopW5nncZYTy9yzpn5AB5T2t7SMezCWpNt1uAyMhGOaTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+c4YahQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+c4YahQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C35C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753070993;
	bh=UnkfXgvLdqEkhGcEb+Q5Im8fHYjUNIAtJ5Okq7qyuLc=;
	h=To:Subject:From:Date:From;
	b=R+c4YahQvacx4ojvCFnFniVllo9BeuCQQQnGOpDqR/SHIwwdntr/GpIh9XtRE7Usi
	 OKyeCH4mgBbc94qlDizoKKx32lxO+hTf2qXPF1LmxduNNFCTZkhvSPBh1NVQWMzIzE
	 V/E+3VZR5Ppi2bNk56PWSEx4VvS1RV++qxgtzRCNDjKplzK7r1+BMquFmk0wnJLCQ3
	 m1HE1HlNZWeFm2AORoyOyfFRfWkT51Tc0LVEcHu8en+Xp7kZGn1tdv8M6ahs3AL4eB
	 PfqVhlwMBNSIQQ2AYZN8sTyYpSspgvc5mxFWiIEtn94gFrmnPnfwB+87KoHhjpMUqq
	 /qs+wPSnDAxJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0F8C83F27
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175307099357.13355.2898616328498495869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757a675b77887e23a16fbfcd097fee10c434dc2b9420b25fedd59e65e4ed5d55
Date: Mon, 21 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753070993
