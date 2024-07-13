Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5389D139578
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 14:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720880423; cv=none; b=m3PxHZZUd5aOol9T5rzDC1uxI/Zmq/nAkgUbLD4FtL3KsCvAEn75iteq9xLzDx+clHGtE99SJwtmFxTYeWanFkVjhYsYcHqSTfWFVDQfhaV2ll7rKHrHpo+nS70Cz0M05G3rXiLsl57b6jctTczY028q95FNkOSvfdoUvz1ZbYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720880423; c=relaxed/simple;
	bh=BKlcPNGvlAW0BzZf6QSaBieKg3Z4MSHgi8kMr/xBED0=;
	h=To:Subject:From:Message-Id:Date; b=oyWC9h7i2iwJdQLtbjVHEpjLnO7nMKEByuR4Kix1Z8llT4dxb9lxMSohJO3WdQZN88arwWkQSL47P+YDmsAO2oBzkxWCPqJRaMcZiLAoVuNyHxkfYD3o4aLdVVPdi2RswgjyUSkEoAAcR8Nl7G0FRnrvSwtNo/hwD7x7qqS9Kzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBYDOZcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBYDOZcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E64B6C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 14:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720880422;
	bh=BKlcPNGvlAW0BzZf6QSaBieKg3Z4MSHgi8kMr/xBED0=;
	h=To:Subject:From:Date:From;
	b=FBYDOZcDx8nU1vDKFU30I/u2emxO5nT+zzUlGXvj0b05lPEiHcV/uFY8Gk9LbHoG9
	 or+otNRWLUXjVyURGszgdYdG2ToD6SnPkhdS5nOhjLywtsWsvcYFMeEDG2oWQcuz+r
	 nX3K6utbUTInNjFzg/GS/gANU5HRdC+YQmJHPOyMPcuOcZF3cJojMZyxXfL69pwY4u
	 sE4LM1aqqCZ3p+LyZYYYdgPf5rlW9auA8erAhhPzz+KzV5FuGaxrtn6BBqqmUfilDa
	 eyrBmBDC5gw2yqDy1Y/MI/FWbMJPt0BHOtnVlBvLVj6o90scaiLgxDlZZ/kYQL2B0f
	 SgTlVTvfwA+Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB627C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 14:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172088042282.7927.14849464786528975051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c10ee8087511204634f0603f27a136665bb271db0bb300a786a741233d48d63
Date: Sat, 13 Jul 2024 14:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720880422
