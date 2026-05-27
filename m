Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD38F3CD8A9
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779920554; cv=none; b=EsNzKGDJr64u/qZerDH3MI7lGfgNOqikrSGZx9Yv/cIoVIBejmU3vc2aMCQJdexmvnqfxOL0gwMvVMUxGDAY5gOY+8zBrMvnJyKG9+Zp7MvqgZxppoS1DUfqRcR4RiMc5lPm/6Q2xV0g9/OwLJ+D57WqfeVYt6NlxnI6iwTY34Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779920554; c=relaxed/simple;
	bh=LKRYDldJZSuhz0kb869B/SSFWcRzIrjkD9K+/PID4a0=;
	h=To:Subject:From:Message-Id:Date; b=Kuz/HBKeundTXlqyW2/WqRsHAVtLFbaVnD3AGxlCIscXaFSq0uTPAczJoTFLvS5D4HDPECf2+Ukk+P6bQgAC6aO/RHWOz5bmcekk/B53V2IF3gZotKEHeow6UQFdy2pE4fKtrtgyqAzI0LVkQtpZZqtGhbCA/yGcc/gez8MiZ20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBXNkz58; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBXNkz58"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95FAC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779920553;
	bh=LKRYDldJZSuhz0kb869B/SSFWcRzIrjkD9K+/PID4a0=;
	h=To:Subject:From:Date:From;
	b=fBXNkz58I1x/rDL2tHhbFE0fIwJXRxwi8QTIGWmRBAuldGjL2wwE9R6Lr8dC2/2an
	 C/3X4lGrYMRwXrFvesvVQkyyKixcr+As/N4IDtR0mMQL7fCHK+2su3t7TTTjZlx7jn
	 d9JiD2/kmg8ant2Uw90ZD5MEijeZQeT4UQWOE0HCQA9CJvAygvYMzscIZbvoQVkgbS
	 Y7qtUK8l5sK57vt5CEKG+QW9rIvOZRjDyeFzJ/NtmohUtUG7sg2VqZthc7ppA867Re
	 yTRFT0FzHqpGd35pB75IKaXfInMD2/4YmJIMu8cc9sV7N3flNcDkTNGzVYcKS1rumh
	 qBE426x6QG7kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E9CCD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177992055368.19040.13920697312331927193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ac84ceb12e68e8afd0bfec6c6d89152b23ca584f3266f5e09b830e9bfe638c
Date: Wed, 27 May 2026 22:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779920553
