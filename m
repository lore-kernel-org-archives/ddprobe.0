Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91A9537F8C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791991834; cv=none; b=pY0ESiUntost4NwNqA7f+FdCB190VUxrvSGg2e7wKlBMefSfKDJcDPoHr/gND8Z2XXJJRl6WMvbscT5n7x0BRcicZ/PxcsEy4NIuANpP3rgphDJYguhws6dpFMqBvQtFm2VZPUVy2nt3S694ZtVGZnM1nZOyU5iERMF2Nx3PgNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791991834; c=relaxed/simple;
	bh=BUhEfesZ9j91Ug3oU1+BQoAY7aXazAEWoiJeiAfdqeQ=;
	h=To:Subject:From:Message-Id:Date; b=KB5kFKRQPKsPHr2gwVIorqd9KgxBX94Ty97Jg+/3Uq6bwho86F4rF7PzUjBDMXBaE4A/pYnsNNpy8jrUO0sLVYCazXXcHSGkFjL1pTtbAHth3gJ8FTUkT5o+NmyJmA21IfNnTfGLJpsBjEnGmAPOy8iaWCcYEBXjk+Dqjm04Txg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OypsxZ8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OypsxZ8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C97F9C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791991833;
	bh=BUhEfesZ9j91Ug3oU1+BQoAY7aXazAEWoiJeiAfdqeQ=;
	h=To:Subject:From:Date:From;
	b=OypsxZ8w5TcZFow2g+iZyyfhCaimODLXHf3kjR5Qc01olsd3TTuVZp7R5leCCGUMA
	 +T+8J9Ns3Foh/qZu59VjoFY+daWfyXHrvz/Fy9kyDeP6HVDNuGApH0KTaJ6yDfrZQv
	 W3T09OBSp5/X99Jhei5/YO5/aYTWjS7wCRdocTAqCdZ4q9U4wfb3eQxrGnaYrBooT6
	 KppYJpTtldaibNUG+XpWn6FPznKkWLArwRW+vH8IJdu8/jfF/GQWYILy8vsiQFU1pt
	 qJZYveuoqMUEGC4CvxqHIdopnenhjTURlRAyLK4j3YKkLbottoUZIHvDdZU85QrGIZ
	 mTfPn1qryIs1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B647FCC6B24
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179199183373.21611.8130604623636406769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da93f816de0e9df9084923d16a5a48213c70697b139afe993218b1b72690b7ec
Date: Wed, 14 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791991833
