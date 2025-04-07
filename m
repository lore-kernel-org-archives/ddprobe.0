Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4025B1586C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744059594; cv=none; b=TMEGWcXEo7itFg74BK/S6Gb083Fiv8wMCUBeh1tdNIZcNNGyFBIWh+JMgPHONCy7VgIiH0VHVFKRQdMabQ2OnSEZ/bGGj+D3zj2azZpEbgMmKl7mSgKMsI7mOaa1VTce8SLOSqzS03BJyrbK2sAUXuFyCFKn6spjiHTnsGD2PMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744059594; c=relaxed/simple;
	bh=N6BQcgQfpuHlSvQnEo4s0Ydthz9bi6SJC39IUzDAZAQ=;
	h=To:Subject:From:Message-Id:Date; b=s197hhAQFL3Peteel9XRYGw1icVg4m1BcOba1bi1Y/+Q3z2vywOg1+9WTVAhr1Cw8iUOs1QMqblDuWFbQCvqsAm9Zgxb7vT56JAMN7nlcuEecEYEYnx8ZHyWLK2s1B79XeNZu59sRBrvyvUHir48mwk9tZTsrv0/0vC0l1RPvVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtHUAyv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtHUAyv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8377C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744059593;
	bh=N6BQcgQfpuHlSvQnEo4s0Ydthz9bi6SJC39IUzDAZAQ=;
	h=To:Subject:From:Date:From;
	b=YtHUAyv7tsP80zVphP/J5nQIUcVQLcV4fuwnA9Qu45JgPDMmLXgzVaL2imR6s/IVV
	 BVNZx/cFV5oV4uPEM3+bb7iOUihG4j32x9SwKbC6jGDE7N4fX5Q6CWdtjzta62e2N2
	 DHxVXWqtUs61hq7rp1+UzlIir9qFrD71CIZY7MGqC1QtjA0Hf4nsV3tO9z8kuoAdzG
	 KRDzk5/gbxMXxpp0O2Px3pIuJpEhluW1IUKtOwmk/iHobVv6CAPc7PLwqEVf8uCONM
	 a6gABxZA2fNny2EJIMCHkCjhdhOPHoNevuHSJ+sZtIeqOvyQRm0gt9ukEdwSgkwZw6
	 SQh16bpSnchcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93155C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174405959358.24745.1382035444655085461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 175d54132043dcac61012020298bd1148f597edf11c5f36a05e022ea07186e6f
Date: Mon, 07 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744059593
