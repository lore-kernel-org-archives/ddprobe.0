Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D29540DFC1
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773974694; cv=none; b=PsCcYIaiOhOGLRMLhufJXbBnH2B5XHTO9/WTf5+df8YbnybfDCeW1+w8OA+73y+8Ybr+hFESx4T8bUn5npz60C1wVw576y2H0vsMMEv1tkR68rATdv7y/qtjJb2MSyXXYdCep+PN8kFiM54jv/CxNDl5xCRiAM30PAopJgJWP8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773974694; c=relaxed/simple;
	bh=DqHkQYj588mvIviYuu/uF5Sa7a8C7IBjwApK9Ygow90=;
	h=To:Subject:From:Message-Id:Date; b=FKu3wDoajcVDubcrKRSM5DjNoYNaFB9V8+x+xDAuy/N00m+CuVkCeyDCv4sKxJt8ORlbctGQcJ0iILGRGSRVdyBzbv+pXa6BBBzcQ/wOVoRzglaJE4WpYK+Z0sd/tz8t1jzp3oMOFDELSi1QxjStVdyb/S/Gd0O5+rReHNVRThY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErA9+kFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErA9+kFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2E8C19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773974693;
	bh=DqHkQYj588mvIviYuu/uF5Sa7a8C7IBjwApK9Ygow90=;
	h=To:Subject:From:Date:From;
	b=ErA9+kFizU3KY9Dm5GZZtLbuCOlRWuYVE88UsXYpg3QZLJw4sH85mJh+S6x2Qlnnq
	 cCgLBoaPe1b/RWfStBrAWaV0OHBpP6YJCEv5QbZZpy5g4HGK9Vh98hpSVw4LwUTS8S
	 ZHyBWyRU1g1xkz4TLCBFbh1wb/R1NNitBcEjuM9E/E10MG3AUGZWBxB+bopZb6VRW4
	 3SLZvR27XKE+sIBqyI/ARKuaOiYu62ZTBvNGgDTjXJky2tykj9vHQO+yeMXL7Nf+PS
	 xuFC3aRyKI6FtQQKE7ojlLIfBRWqJGdOUw0XLdSVkiJC/tmlPqDM8wKIkv+iXmq+LN
	 b/0Sk2NCzrTKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE81093170
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177397469357.19972.8603295131955509688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28a10fe0ca2e163b2d791914046c23860cfdc6754cd01d9d657d09181a8b64a
Date: Fri, 20 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773974693
