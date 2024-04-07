Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EADFC11181
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712518697; cv=none; b=cocHAUEzIiSxl9svx9rh4tQULg269SAvMnQ2WqKFdcUSmW1WyKFvIxOtlOS76rV4x0dOJX9lfE3bKL8ZdqQx2sW0TNsU0CwSLrpHjXIvYH20Xyb4wEyePZ94B+ksgR6sZ5OSSu8CC1b1oDDGOqo++M3DwyWEB/ZR19/Fd9ispqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712518697; c=relaxed/simple;
	bh=2+M/uqk1eAVIt+pejNjggXoxAed+sU1NNGihcghF8Ks=;
	h=To:Subject:From:Message-Id:Date; b=lxaA+JuCXDubhVZGiQ5nytsii64bCTxqf0OPeTGby0c0HmSmOw/5VEJg3crBm+FrBebemI1CgNAWiMkDLAWPTmVS0EXaM0/mARLuSSii4eYHshMHbzTwZvp7UwGDKaanSwdm0OB/lcBkHYBaNldqAS5RumR8MPWuD1neBG0tIe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AowBQh1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AowBQh1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B77C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712518696;
	bh=2+M/uqk1eAVIt+pejNjggXoxAed+sU1NNGihcghF8Ks=;
	h=To:Subject:From:Date:From;
	b=AowBQh1bS7INuLIB61rm81nXfsaYq6M3PF7x/+NiTF3Gq9wNHTHc5PdjQJrS4381t
	 oBtK9vgtNeTCBG56j4R1kDPw68Z/ZH5Bll0L8JOVSJRMbAzqQ5NSVoaPWcgcwEllJo
	 ogjLfCPpg740/Fiso2vSBhAnPL7egwqPuqdD35oMRVmXt2o6kp4SmFEDQOU0ctRJRf
	 G+o/8ux5YTBSveRsauRjH3l/OgMsUBsx2yVwgy1kGknYCTm1a0WDyHD8LO39ifS+LT
	 JCXR2YgMwRTnjn8lVvhhb26YPK3ii/l8Jvtsb2yWBVVl48IxzAtoHvQwOUu8s5opqA
	 eJ2uZmlnUfJ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BACCD128A
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171251869638.32634.16819209005941004670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4db63adcb78805de31b26c3ebb6a80c97789d92afb7740e33b413cae4fd84ce
Date: Sun, 07 Apr 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712518696
