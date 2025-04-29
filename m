Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEAB27735
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745894994; cv=none; b=EhmSP8JF6aP84qYinjidPCiJra8+EEGR+LVpvvVw5tGZ1k7NuYzGrIYwH3AGlkS45+/5Q0Cn9Q8gqYlXXXi+NzT1qVUWA0N4WZ0AcE3BOmHkC5Mj1GFMNRFfoJs/vABcR/8P89FlRG/tZB7qf4KczSXKsmbrtIMRbCiTnn2NsRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745894994; c=relaxed/simple;
	bh=yHsV2ziNmZb5QaT56GCcGI84Y4Vp/RZ0rN8qS/eRrrQ=;
	h=To:Subject:From:Message-Id:Date; b=R8NBAH3YVzZPSUzzC4M6lTa2CUoflUcOC/7Ea3jFqdoCTu++AYLYazNWaMVgbYpkpxEOuBY4dDvtqTQliOMgRuu2oyt3OLhaAEu+Kgu1MlFyINCNbsyd3NouDvrB0dN4PHWB7ub26HHNH5r/LI6+Ea9n1hn6rCGmgKjZ8FHEc8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4GbhfFU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4GbhfFU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79B4C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745894993;
	bh=yHsV2ziNmZb5QaT56GCcGI84Y4Vp/RZ0rN8qS/eRrrQ=;
	h=To:Subject:From:Date:From;
	b=j4GbhfFUmdVfvjDyfhKBzCwKKu3ZBDtyN/k49Y38iOghM+75/MSfNyhak014sKRfU
	 W4bULmrv/8A/Q/8Xsj+uZZA2IdIvE9m0Qa2QX71F92DMgiRyQQPZv2VpTNhLIsDw5L
	 Be4DyP3c6UXfiC3N+iL15XSQai7wwckz33CG0dx4obaKSFxynq1L01G9pbT/XAB9Gk
	 F/dnr70x4i7Z+syqdbJdkJNX2fp23qJjR6woS0N3+ZXRBJgVjJkb5LYX5F1vonZGmq
	 pupQS5vp9P+qZvAXDEwzJD9r5dgd43wcDIXKW1oWwRxNlTV4m5ccbKrQilnau0KfPv
	 s83cYZFcr2ZFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9459CC369D5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174589499357.24270.11910282355089759536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f15c00f338c799f140390b1b2ad092e43c591175fbae901ce4a06bcb4dbcd151
Date: Tue, 29 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745894993
