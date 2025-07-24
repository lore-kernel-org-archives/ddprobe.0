Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A32192B66
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753322395; cv=none; b=Y/0Ibt4goCZVTMA/MbUca8C2eIacnGzFn9Mlv8WtGdieOzjkROyxSou0/bNzqj/iDwg7ehUj0hR8GwBEXWKf4z4A6HP+6hTZB1pndbBcTmuBfflaJ85EArcwtuexcizrFFW7IlyyWlqnkxR/7+U1DCFPX4VefyynNt1t5PXs/1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753322395; c=relaxed/simple;
	bh=Zu5Hd93A1R3lUYeYwIgeLbSasE1D6KkQszWwO6tGQ6c=;
	h=To:Subject:From:Message-Id:Date; b=gtkCluD7CByaERB2M3I2FN+SS2QAE0PUDrFNf1pURbWzVuc6u8Xno6BRquQAQKfft3A6p1rk40IFGMBByaSwc5WJFxfWmVgDUMJ4BaXwEUSxajausE25Kka8/MYQYYCa4bkjd36pkZ+Iprg1FX4jbT1uYtMyFCwJnrB7Lc18R8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4/jgDAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4/jgDAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D971C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753322393;
	bh=Zu5Hd93A1R3lUYeYwIgeLbSasE1D6KkQszWwO6tGQ6c=;
	h=To:Subject:From:Date:From;
	b=o4/jgDAqHXMtemKfgEnyS5Yd6AIaXywveumm0qu8aQE8lXIklS6KMc8EHwcqG7GM4
	 DbLml7ZpGmmPV4AS+D+6ILLhQfQ6rwpC2EesYWdb0/SqtjmCZ0PUtqQu63m+Mx6Pxs
	 5thTtrlrGo0xU/N6/z13GdHLD+jylT6WGV3s3WGRbZ8KKCyVSI8XZDDbUsWH9u4Ryz
	 WXCTuSOwQChLD2cGR01qcoqBxFlD4pqM1aFsqt3tJTVl5GBWNv9FHzl6aO0NbYsMIE
	 z9/Iw5czxlM0TNMFrZsxd+1is+KaRGfolLOoOCA6vL8nJ5D5nZ3Uk7eiydfs3h64gd
	 NWYO5dn90koUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903E9C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175332239358.18321.469778071994995632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c3fbea63dda438ad16c8f19b487ee3e44628ea6e65a4af0e8e034218b966ff
Date: Thu, 24 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753322393
