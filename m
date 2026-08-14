Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45ADC342CBA
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786687835; cv=none; b=XKO/QIL/S5J3LB0kj0aEE/ytwJ8AcdW1YQ5SMNcDn3DHXmEnyqVSpyKrQ2FPiEcyehnJ6RZ4i2f6gQItHyS8LyqGMyvCIMe6kOE5LzEmKRUYjkDuUgag8cyDMeVsc15dFMZYlSxUaL4mlNk3UIMY5YBu6u/VHbvOAdhocWwyzv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786687835; c=relaxed/simple;
	bh=l1q4mkQTeGvO7uT3GpNac7BlBRl8oO0ZDDxsa765zzg=;
	h=To:Subject:From:Message-Id:Date; b=IaTAlrEtzOqAioc6iquyHvvCiIpAdHlsujd1sy8vtlspYSYGrHLMCj2yA7Xg1p46f1HQotEEOHw++dI8a8Sso2A1Lc7RmT5gcnhp8V9bUGHj+NlKBIQDvtSJ5cbwqEohvKWYXy+UcGvJ5PJcIDLs6ho5fDR8fwx+qP0B5yN3tvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLyh15ak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLyh15ak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7B0C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786687833;
	bh=l1q4mkQTeGvO7uT3GpNac7BlBRl8oO0ZDDxsa765zzg=;
	h=To:Subject:From:Date:From;
	b=oLyh15ak/liShF+1WkYI/EszliFpz0fNVSwKytjHdwoRkUp7dWagDdoYPkYXw3/DB
	 FeD8zWYGidVKQFxW9KdWY9VnfHNgPXEbsZAaQj0inkQ54U5pt5nZ7Knj4g3fSDE4tS
	 81MZhEPemlWs+/IGvX/eTBAM7i5dUdWGqwfD7rdaH8yqFM4VNQ9f5KuNJaSElc4vFd
	 /QteZE816Pvw1JolpvJA/n2uLtLJt8nxnpZRJ+WplmEWS5ytBqBaxLDptWXFzKG/EC
	 AoOGR02heXjZP3jGF2IE1q8RQEBiHQyXY+icgsCPZAg/bTpApgXl5Wsziop8EPDXGm
	 moZz3qx7gxQBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B08C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178668783368.10153.6971191974166707784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e0e8702bf7594553a9a0d60266cc5d1083ba88374b7f90cb26fc19062376367
Date: Fri, 14 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786687833
