Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFAD4389E07
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773393894; cv=none; b=OTls09b8zdWsZ3OXkxEGev5Uda9HV5fi2RX3G7FFMCuy3e2P8+6cbAsI5GaStLRN30XDbSVrrZNcDJzIza4J9iuEFegwd66ZL98s6+YplN4aKv2D+WLaY0VMnUy8I7C/Cru6Kx1OY46Uo0+TZOj3o2d02U+aVA4vSNp/qPsClhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773393894; c=relaxed/simple;
	bh=tFw40LnO+CIOcTXLtO2rm9PuCvLBGS/Tu8Tx9iOSIMo=;
	h=To:Subject:From:Message-Id:Date; b=DgDLGrszvC6XcWYq4MNPcGMzqIPag3Ijhiw/+H3OkrxwCfZnKbmMKMaZCzutotg2z1dIFHazCaJ1qSHyqO9mi8KmzQ4bS6MHxLG68Y0sS0wO2lrAa+S3YmJA+eCUSMx24Yn39dSCJiZNiiCgYUDyR8lfGiOQQu1jSXSSosuQ5uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iz8yScjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iz8yScjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82A4C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773393893;
	bh=tFw40LnO+CIOcTXLtO2rm9PuCvLBGS/Tu8Tx9iOSIMo=;
	h=To:Subject:From:Date:From;
	b=Iz8yScjmXIWPV3llGe/26+UxH/zrhT8jhCTlJJQwqojRK87RUtfELEVBECA6aBPZe
	 j4+WozIoFWdklJ+OgZC5ajp9t61iZ85KJyhfErngGgUJEG4ZoS8oFI69waf/2JPGAl
	 evpflaOBIyBLFz4kZtkoGaL4KKy9ODc4oMPJIoE5dagXa9MbJ7vrU5jLin5fEtHpCR
	 o24/wwbMo2mg/Jez8MJy9TWUcdP3yohxyknxEgzEU0VO/9MWrY0G6QAbNdNmOCOm9U
	 xuO7Ivu0EHrUtme0zevTJ/KHZfJiOMRCyLvxqCS1+hwzwwfgLOSRgdVf/4k9566tU4
	 OQwi2HzpTKiaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9862C105F781
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177339389361.31300.13157112082620247249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc349f571f175a613380085b42ad157dbea045d8e0c13a86a5f572cdbb250730
Date: Fri, 13 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773393893
