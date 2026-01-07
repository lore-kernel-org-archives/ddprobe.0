Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB521A9F9D
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767810234; cv=none; b=JmYJ4PZTAzAtlk3OdEWm0f7v9wWvElb4zUIfKB+5WCzcwBMN9d+t/DimZ8Xd2/5NdkVEOKw9caW3JnPv8Ee6NPVfYT0zHi4e4WNoGpyH+FgwFuyoXGCK+jOT6bih/0JIUF9Qc4F3tVhIjnrOLM3X7tYM3S3Y3pPAnDk+QBPVInQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767810234; c=relaxed/simple;
	bh=K7EzNezD5dMYQkShNgQzj14fzUo0Xrfse2GHNHBqEII=;
	h=To:Subject:From:Message-Id:Date; b=mpHWry3/mQniLZKZJ55rDhYTDc4nl4fgBDm26T2VtSGE/7OWpFs1P8uEVS3Z/sJzytfObD0+BEvWx7AkqP+RSogQs4DOjzjJJSceqN6IUL6Ix5ev7NVT/FrNZRloYUFLag+YNU/wRiwlED26kVwUdE26ya8dOFJXEYvWXdnQ4a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDU9GKsP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDU9GKsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F570C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767810233;
	bh=K7EzNezD5dMYQkShNgQzj14fzUo0Xrfse2GHNHBqEII=;
	h=To:Subject:From:Date:From;
	b=CDU9GKsPaW98WTeNSXRWLvsISKEy4UEHotOUBys2A0b3EazRHnhyddnq0fm7A23SR
	 KKSNHipvRyzco5vgobUGU1dpK+a/q3sZccgtUgyMD/jGTOsB3bIRuJCpTf83bfPPuT
	 an2LOgfzwFNRlSDn05fjUTOJmvPfcV3CXDb5cQoDo3ldz3pBTr12K7amCt9lmJKI+T
	 hfNxXeJAU8Ys9XKSeMPezThaTDwz/F7ucSF4HCuHNnzbFmqY/HoTD3ixl7yI2GIZzf
	 cyuQ7Fb159adL0NZ4+nwy8sL+xslbtlFJFCeQMUHh4FKFJ2b2ZT96TvlKgQkfpZbqo
	 6mM+PbEGMMk8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C6ED0D15D
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176781023357.20732.747874655448351567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e7ac6ca3b0ee24f9ae46bac7527539873e9285eabbd64e58cf491d2513ab79
Date: Wed, 07 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767810233
