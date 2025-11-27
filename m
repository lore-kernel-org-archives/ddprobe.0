Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC1B288CA6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764260574; cv=none; b=jfX1DXg5C/+fXmcNzKHV2ONLohn3X7tkl4z4QLlMJrqRi3CHhIyOLXAMs92NcUoF/0E44uhCXIJmtvWI/yUof2o2xAqe/5gBB+5PP9q/LUxGMpjPWR5uMxm5nivL1TAlzQqZ8Yh2ZFZsLmbvzsc6dBVrWHfxNQxADCmfGI/yZ6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764260574; c=relaxed/simple;
	bh=DpXbjDfYy7rJ+aZ0uoyPcicX7l+dye4R/6ZZuSMndnk=;
	h=To:Subject:From:Message-Id:Date; b=KPc0yYYhNvyg87mRTi/+SFMpTjmrQNxFKMR77y4fdChMwDggHmwHQ8Qaol075IZaCZVnkOCos9Wdces/zwMjyl/e5PiGE/MkGpulMtOuNfJSlB5cBG19teFn7AMGjSi6hF/FE+Go7iP4MgIfTiHMcJpo8cmnmcEMXZ1HS5EQoqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gujBeJY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gujBeJY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA99C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764260573;
	bh=DpXbjDfYy7rJ+aZ0uoyPcicX7l+dye4R/6ZZuSMndnk=;
	h=To:Subject:From:Date:From;
	b=gujBeJY/FZRwiLOOthWObspX3LIuQmYmlbRprJs/kvlaDi/pqZUzL2ZHwEe8RsSll
	 LfDn7Zq1l2uDBj0cuD7QEXTtIVaMbboWnkMzUDwzHkQtaQiSvuOMhfQrl9VCt7rgN+
	 YlimJWI2hXO7pCU0lcOsAHIjJlLfvrRCSf8CnuPG7bRMT3LglPQ7z+5UxTT8WZhq1s
	 U+eYHhGiffA57nsKNzaL6dbW9IXWryEBKSjAXto8xbJYzGrBKbXE/bly/l1VC53t1s
	 h0kPeKGw8sheYQez2wFXEKE1UzSs5v03JejCwYQgBnMYweqcYSF+qHoEHffX8kET6V
	 aq19bkBe0kpwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ADECFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176426057359.16479.9983026759946345229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041f8ee668ad3bdfd2565a19e37442ee2f39e05b8026930e650af411aba7291e
Date: Thu, 27 Nov 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764260573
