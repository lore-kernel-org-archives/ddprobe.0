Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F2CBE5D
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 14:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716130343; cv=none; b=VCIy0ZkcJnsW5fJwZF2EeTO+Wyy/apQxECLEsqf26xP/kqsvdrCu/YXgPaxnKgFt8o/ARxicYsD+TBQN4/qLui4UepXbfcZ4sUxnqCcZ6k2FOsytt3cUdtMVZUK9w9b3dXPb0npOey9aJP/byD8sEuJ+bBvirj1LgqOjUfjjpfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716130343; c=relaxed/simple;
	bh=2QQHaGdL3g2OgdkxCPQBC9aDhrT7Ix9xLg43FHRnw4U=;
	h=To:Subject:From:Message-Id:Date; b=YQypeC5WT+tGjsFQ2XXb5RCXlykb2PBY4KolaqNVPhFQLAtT2OMP2SLsFbQBPV+dJFRDWLGqXzAmt8cvWhgcCwgkFUeJBmzJrcJf8CKtge+iNGkc2PE4wtl0g4lPzV0qfQw3PzrheoYsviMCc5wd1x4rnXg7JTnagKOKaMJB6Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZaK96vE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZaK96vE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA4C3C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716130343;
	bh=2QQHaGdL3g2OgdkxCPQBC9aDhrT7Ix9xLg43FHRnw4U=;
	h=To:Subject:From:Date:From;
	b=bZaK96vE0YukditGcO0C7bHuUu+kVoLFjAH+vFm/JwwdJWkv4prNtgWgsOzlAs5uR
	 0K7xIIQDZAS39coCkE4rCgA5KZmZr8Uv9ygPG9Bzxqusn8Dd3bVtWQ3jTcekXhY4ig
	 NI2853xrpKXWUTD/r2QIQ9RV2obC9SZ8A/ECOJ6kEzbAynrVKNZuqfT7bBy/b6SgX/
	 C1cJF3DwqSqqe1eITWA2j8uvYAIT6zVQGYb6nJX7t3eu3mSbCAS7usnNRIs5us3Uyy
	 KoYH2pPAPxArQgE6PEQoytQQnOcihMGuJrDuC/O7em4B6vw9c2QbKgG6pxtPduV7E8
	 MydrYRJ5A3Z0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D094EC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171613034282.26424.16900858736953169343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 539977eb9469093bbee690cb8be092ad6074f16a7f0db0abb98a0411f35f2730
Date: Sun, 19 May 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716130342
