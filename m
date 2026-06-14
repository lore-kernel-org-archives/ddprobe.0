Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC562AD2C
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781417794; cv=none; b=c1iUc0boM/TaDIuMQz2l95b1S4CWQI/VklbzH95P93PLQ8wYKktouarcqrr+tgYBfxStUwwTAyIbEQ4egPD9SWuXrQ3H1FNLUYzPex4+S09zuF+AWl4CiaBpGl6omSvgOYtRw4hkV6CY6GKTwm/m01hbecjtcV/+UyTQo/FmWaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781417794; c=relaxed/simple;
	bh=ISWdfsOqKRNyB2fLSl+UJg98BZ1Xagb12hDXzoOcc7M=;
	h=To:Subject:From:Message-Id:Date; b=Xe8qWrPIifqv2JDQoDbYXF8uYs6Q/2QS3rzNuQL9VOwR2wUvXbANAyVmVk+fGi713sT9oCs9QONjTwMThwUDqmPV3itvRxD1u/2yOm4GInCCBMv/3CSRHPxIzuB3Z6GT53054L4yFeCxrLCMWYpVkXzrvWFIk3/lFd0FtRsCemY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joUNWNyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joUNWNyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A0EC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781417793;
	bh=ISWdfsOqKRNyB2fLSl+UJg98BZ1Xagb12hDXzoOcc7M=;
	h=To:Subject:From:Date:From;
	b=joUNWNyOtdRD1KCWTufSxfGJAmsLZ1YruFusT6KHX0mqM6KbzV6/GlJBt7e6jCCDp
	 RM+WUJPEK3dgec43O6r5qgU6a4n06XJt5ufcUNDs9744GQrRDfAWMc2sqtmyrNZtNM
	 HHvR6Qo9ShPtQ4KIlptSqE3NJ2Ab0xdF8lq3qo7c9Uvoh3y/upIxpO27mlvndHDSlo
	 wqtBGXvBd2G/ssWORwCtNaH0ezOm8owFrSj5dL3ntZZiH1BugCHmjAOXnVmQ9cF3F5
	 OCbxuYcub78/yHhO+Ev+/6aklbjqatnVhfWaBJAuWEIYd0uavHhHJXMzCb8EwqBHqy
	 ztyuUo5J/wXgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE9ECD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 06:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178141779369.13814.16260708441166401011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f6478e706d2f8c4d9f68225de384aa8003d82c6b229cc2aa91366c75609ec5
Date: Sun, 14 Jun 2026 06:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781417793
