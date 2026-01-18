Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25FC2C3277
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768764234; cv=none; b=E5Ei6PSaiFKFd0d+Ihv2qbb0Jf9AKGUsE1d4oGcqrPv7nFlWSRaU20qPalCna3Pv86vogwkXhZQgsbcmzatpC3VMtkN0tddAkR/Fd7i//CUd6Utg1hnZmTTB8Sw/4X5tLAs1WTcdjcgBFn/GgcHtjPi8QpbofdLka01kOMlUx4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768764234; c=relaxed/simple;
	bh=1MvNRydUIGY34BUHslsa6v/hGRcvqCnEBBVH86GwNno=;
	h=To:Subject:From:Message-Id:Date; b=Qz8uujGaOrWPJ9Nhtf9E6k6JXZPfjfBkS1jF5HJYypOmkp4UdQ1JFzd8Ybc7DqAqBy4Yr9Xyxf+KyY0lY1poJTZvr5WO6b1WsPZ1nMach7Bz3K7nMLLk7oAxKysIaI+g/aPxHh8vRr8PU30QVnTH5C3HTJD+kpWd2cUQsjg9x4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPYJJQ3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPYJJQ3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AADC19423
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768764233;
	bh=1MvNRydUIGY34BUHslsa6v/hGRcvqCnEBBVH86GwNno=;
	h=To:Subject:From:Date:From;
	b=ZPYJJQ3mvzgr6+uPT3Z/XM/KH4Iv9tc9rja1j8GxD4MiPrcR3K3o5iD473Qg26WRk
	 hRlvObVx8mTrNJYxOWBZZAx4LuO+/jiTB8VWwJXYBpkwPzpHzV+lCcoAEFq0jWJYj2
	 OL71nmxLEDRkcN9yntLLAa6U1e4utlHbaagzlYPTpX6XpsSkPVIlxuux2YPcTr9hdW
	 yuoj782qzt+nDW9Toge1+TuffaazM6t1/tPGSH7jkPw9K/EGijbRKQCQOuZtyMXZ2b
	 Jjeq5cCr2tvQRRisvKf6uxGvLO2LS4TWBDcsbEHJFEpPjDdLA1JtMp26nge7BDxyoB
	 wyueMNeC/klsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96536C9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176876423358.1188.8597310988342622045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b05289a2b6e328e186c519e31d8417fa5b96135addd4712d5f1ce4c8d10c9c
Date: Sun, 18 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768764233
