Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B04F182B4
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738678554; cv=none; b=UkBHvLwnaGyVGwNawKLaCivADDNd5bNuQYmZoyp94Wnk6CYaEAYfZ+KqVwnG85GkqJj2prstcXT2p2nIBu5ETo2foqScYXFIL+a9KfXD8qPgBe4POq2wPTAL/ruk9GE6gZJPpTnlHQhoHReBAf2NimPnRsy6nfXXKmgFwIFDAiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738678554; c=relaxed/simple;
	bh=i46wIsL0VgAJQASE7K2jMgR5YI6x6Ut/qc85j9Gtz1s=;
	h=To:Subject:From:Message-Id:Date; b=OO2t8Qt5rqsu423xjUXshulptdew1kyx0J07d00RNtN/joFu3tJMfl0xdlC4ZyPH5CprVwY4tq+k9fv/xXhXvnSOOpO4HEKo7dGf1Qd3tXnaX7n0MoKKYHn5vIReFXrVVHyYc7ry8SM0l5J/pk2fMYBavhxy89H6Fb0LylyIV1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXygMfVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXygMfVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B50C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738678553;
	bh=i46wIsL0VgAJQASE7K2jMgR5YI6x6Ut/qc85j9Gtz1s=;
	h=To:Subject:From:Date:From;
	b=cXygMfVmmU8mqtWUTJ6+w9rSRtRVDjF902uGNvnI1+8yC7VRjXf0KTczFfopWKbvn
	 Mqrzn+mzoMLtygwLXhM9Jpec3ddpGJWNIwVwP5asuHFUKmx3CTrdvncTl1EMAjaT/F
	 Gjrj7NFHj1FaGTKUxMbWmBdZBfd+Cef9zwX/fvpvRSVzuhtk67PLOTNGLnlhDJ9ZIG
	 2Eg2NUoMGtJv/qGqIxV4DtRGTh27gAgwFUCVJ+0MmOxsOk7/yRw1lXpH/eeHpA9FyX
	 oYDmQ1K1+f9D0Cv2OZpu99NZ/mleIXvdzK9CKmomlX3Pq6CqANuT8l4pgbLlkuxJFU
	 TMC6SVJQmDBhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F69C02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173867855365.25031.16284842112373173368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f89f491e12c343f19df560fb311549fff5061b47c4286fd9aefab7d605851ff
Date: Tue, 04 Feb 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738678553
