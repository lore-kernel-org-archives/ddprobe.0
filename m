Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9CE305E2D
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760722194; cv=none; b=IZj5IGzjSwrMU0l5ujM0iLte93bCGxKSv6OiMf+QX6FiYXEfBThwXdJ2RkZvrgHhvto6tMI31dBLqs1gvtPFFhMdHsBEs+kHo41xeHhUr2G3G+RAU3qnoOfBeuRn+lxGZfOg7QElvRsg5m12Mzmb1tvH7VDImo2Yvojnycx4JJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760722194; c=relaxed/simple;
	bh=utoFyUXeReZHw0ge2/7UQTIlNZl6IyiOmk6hexCIRPA=;
	h=To:Subject:From:Message-Id:Date; b=W044q07uShig0/fNlGv/jQKL5j2PB7bxhp3OJ2/qZNbs6H1NxZNcNGyMxQj83rCd6lpaniGBWMT0nu2VscdXy8i6wHqAUImmXGL9H8js+E3fN5Tu7BsEGxDnScoKOUJA7T4qvkqWZ47kAG3iV5e/AY5jkS5QiIOZ54idiCHkzho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXUjBT/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXUjBT/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D09AC4CEFE
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760722193;
	bh=utoFyUXeReZHw0ge2/7UQTIlNZl6IyiOmk6hexCIRPA=;
	h=To:Subject:From:Date:From;
	b=gXUjBT/HWEKHB2pGG+/t5gHB6IvkCn67/WuJhYnNHrdXO1k5csfKxJGEvqcsO6xAX
	 Ps7+aq77MTh5YoSNOdwD+7fNaF1KQkrnyvnRbpmM6zUjtzv9paCBMTKvO/uFBgjP1K
	 wI2xS/JRPBmp6HMt7Roz68EFLtc/pDoBdH/ATQN5BiSdp8+Y/1c+aSTVR382Pwyg3+
	 ZBXPyoZjTEz5HXEjAARAwCHOGev/Y9wWx1AAy6DWy5XX9WlppaM3atVzjYPxixnLd0
	 2D0hwhHW7AhZ2r6E70Np6Y6Cral7QTSUd6jVKCPk0VcSpUwavIaHJZok5Pxn7iYtzt
	 8rq0GeyCU9GWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F702CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176072219357.3769.8720969419739529363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462a4fa71d42bdc7122df2376f1743be31651ad1e122e546644bab467798f418
Date: Fri, 17 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760722193
