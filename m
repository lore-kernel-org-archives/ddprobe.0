Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A64C22541C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769802834; cv=none; b=jOZPoddj0iNCH48w2VrrrTKYNbiZYi9ZY4V1EKrresB233O9E5qewUN5ujR8uhkr61TY8eCFvJlBpBII0M5qyI6mFPdZYzaEtceYlYLLEIO50I5rMm8thXSsSTAZDQX3HP4TfsUDpsfqHABVvC/aznNdh7VuL8ggAgvdfJVnLDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769802834; c=relaxed/simple;
	bh=EDCCWx7A6z1cxGnzlhueCiiYGtGaT5h1p59+j6uoqSI=;
	h=To:Subject:From:Message-Id:Date; b=kRuyUh27cwDHv+Zt4nvJf5dJfUl6ghmL4T/a4K9D59Pt3CXq5b9Ip3DXE4sdqxfIcydGG8N0XeN5uDOGZood2PQWQDewbY7Z/uQTj2Dr9BECyADsZIUxHACw8Eclr+VQK3f+YtIzYoLDoo24uwy0JoMcS0X9DVcoGdY2qhvyTKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCBF1RMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCBF1RMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C48C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769802833;
	bh=EDCCWx7A6z1cxGnzlhueCiiYGtGaT5h1p59+j6uoqSI=;
	h=To:Subject:From:Date:From;
	b=KCBF1RMkkK7qR/AFJG6PpPpa/a4WNLhhNoKsCbCxGGsVpc9Us/Wdh4KSoSJHWktfQ
	 u3F0TEml5e69WEA34dNN/f0ZSDc0AnT1K5cQpAw91rb+rogv7IWsEMKM+gfq3ZOVU3
	 0oxlXC3oAkff5FIcE4wJKqkOXaL2av31YrrMoxR4LihzBAJU580VFGUxC0YYAm/Tgj
	 CM84j730AGmtaMJ2E+tohK8EeoQIrfIvBBwFUOiqsS0zvOz5yE8NN0e8R7gZvyPEyM
	 3ksEfJs9gQFL19n/tMKYYyIR2bkfTwU3fSw/ZMWhPpvJkdywjULL2Pp3nzqig7hbFK
	 Rp2z0rfzAyklg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90657E6BF39
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176980283358.8555.3875936822568912024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a03f5a49420b792a26e6ec7fbf5999279d9a41a5a58f14a5ee27f697e2ca2da
Date: Fri, 30 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769802833
