Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54912253B58
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790220034; cv=none; b=heeeAoQbCxUvghvN/yT0HDNiJqWFKFhYdBTj9q8+JUJ+8krncG4akEVVTBF5WKGkIwAtGOxEBL/fpZcZnD5+0+JbkRsOsSwYv95yEf5YOijTUlI9C9p8WKysXAEfcQ82sZ41ETPBfKWmbSx4H095+r6DJJJ/9aPQvkJfq1Iw5ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790220034; c=relaxed/simple;
	bh=8L/NAo1/QPvgr1zovDw0+Jf9RF5+7WZlHJ/BILS3YeA=;
	h=To:Subject:From:Message-Id:Date; b=P1y8aPxstYdYsG31CmbUWpG7J16+eGQOkPfe1O40Lh1mRAeHrcZqs54f/FqgdCCBPITpFiOh4xq0wpXmc4Ufjr2lLNuPHvftcjnIvFmUwUI2e43Arj+SMVZfKFmVs8qKTyEvaZa564GzNb4BVf1Baxl7nS/yxOwNrpykpEeoikk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLoQAWay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLoQAWay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CAFC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790220033;
	bh=8L/NAo1/QPvgr1zovDw0+Jf9RF5+7WZlHJ/BILS3YeA=;
	h=To:Subject:From:Date:From;
	b=hLoQAWayW1xT2nBvZ61Fy7So6xSEGKphZ7/IbKM4riqVv39zN2E0xmMCiCXqtLA5l
	 eaw2bMjnaGRRsDYR3mFUmNoLqJxSU6hC/E4VI/o69vUqZaz43GabjPQQC7xelroV0S
	 uVHFqBVInGbisB9s6MtULu4o8spdFQtNhBdJK9jOtQcdRnxD+gH6zSeXErsY5bnhuj
	 pw4YpF46P4IsTpthQqdJLwjcprXLO/v8FFymcvoiUizffXIb57J1oR2hCxe1R+cuNV
	 QzDCzX4rGwz2QoX6/5YAo6t6QUbLMg3eVLk5RjVvGcLSso9/NcqbvBEV+E45dElEGI
	 WnP/J1xNRem7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A72C98304
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179022003370.4759.1191952842173998643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a53526f41b960ad1a1708e482b31274dbb82bc2146948321c9e0b683b574a673
Date: Thu, 24 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790220033
