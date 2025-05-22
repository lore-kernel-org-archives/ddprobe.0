Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2154D1EFF8E
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747907994; cv=none; b=oaWDtf4F8/P8DXq+MHzvUlk5HZonjUNdjn9Ln/7EK2/YYeTVbGxNeKHhq7heDRoVYBnfY71mtmLBGYgnfanS7AHdltFE0y8NKV52gQjQpt9qRLY43MG5PCm8YdEYzB5XVpXe7QFB3S+ue2t9CISWEpsnPWQD14P9Q9JWP2CBjlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747907994; c=relaxed/simple;
	bh=YMT9+94WlT8zPH3wOhx1i8KTFRybnCEhT7g8tev1MH0=;
	h=To:Subject:From:Message-Id:Date; b=ZvmbjeS/OgBjlDVTZBUl2sNR4QrANQblWLVSvdcnIjxdfs5a3E0Xa3za1b6Ja/Kqhqr0NJZsmumu+wGaHLS3yQcqI2JSCtzNTp2g/Dg/ERqiPXGjKdHJkjSoUxKpaEN0qlwr8LE/IovPSGFNFZvfzS1l4IXdojzcK4LFyUeJs3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYMv2AxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYMv2AxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E70C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747907993;
	bh=YMT9+94WlT8zPH3wOhx1i8KTFRybnCEhT7g8tev1MH0=;
	h=To:Subject:From:Date:From;
	b=QYMv2AxBJ/cVH2l0JiBL9YgDNqceXesniEry6EmNfrchnS2MLM8jPkJpSmqU7caE+
	 U1og2y2X8aaB3sHf/WjV6y5lQspTyR8dETuyRbUZmt4VsFRxZBM8bVwZLMmlM9g/gz
	 ZkyT9bwraa01WovCr1+kTKPAhT2LGHp8oXpPVisAt2wBsFiniWc2RToOEqZVP+r1Kp
	 eDO3AqPKVyIzf8UP3l0IH1o6uJ7gWPmMatbErWsgp5Y4r3Elc1qTJamOq3+bhJDRCd
	 5wWKyEcid5Bu2alpBt2M0M0vv1b/GokNOoCvielU929pudx4ogJDrNLVfs9NLmN1rf
	 VYfr7DbBzl6IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964A9C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174790799360.23247.13498956488504325561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8144cae05ac6856bb68b5a7deab0f576dc8aad17bbffd49775b885f36eb5a5ca
Date: Thu, 22 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747907993
