Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD579210185
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746129593; cv=none; b=jEm1MxN8GLxJbqYGlZiHPSaWmU6+NDmYXpgA+4Pj2qp1jtgTBITwWHNvvsW3aHC9/5441T84cHim4JzGz6mpGFxrPSsb7EJ51XrRrykLEkDHHkJ158e0+FcMpk4Rihl8eCIqNvJjsLJPVRxbEhGyQKnduWD4F8bjp/DwrCp3Ebw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746129593; c=relaxed/simple;
	bh=CW3uDSeT53UizMPClet4T7DdBHgqyGrnm/x+Mdo0ze8=;
	h=To:Subject:From:Message-Id:Date; b=SgZDsSS40V9sAMJLajl7M9RbWgeOoJ/e8GGNFv6bDf+v5ZOkVWyQpm+kbEYK998azUJP+sJJt8fykWFSE548dXoQHbFLeSYsWfJc7a4KxGY1dUW8WVHGPvJTz+NmmWyp99NZ0G2cD0fkE3I+RsUwU/7qIy3CKMbCvLJx5NfxbvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaaICW2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaaICW2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E704C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746129593;
	bh=CW3uDSeT53UizMPClet4T7DdBHgqyGrnm/x+Mdo0ze8=;
	h=To:Subject:From:Date:From;
	b=DaaICW2B0zQqGLvvUlFST0cwl+1S2GikLwzD+Se3YHRb9CPhQsyZiqTPy3Ks6L+Ar
	 H6zQT8vYrh0WOttqNIFz4rzy4a6m/Gt/QUVNfQVEV10Pt7693obxDiF24ZHBe5jfLR
	 OX1J/cjvROzgjqwUkX3pUlNa7OIlKJmG5OUMMXR/Kw/AqnSeuPPqp6DLLJ3b/RpwHz
	 krM/mj1SOMHnjxpbzzNDJS2tFm4iR/Ojetg53/gib4cH07CdAjdcX/EtW4AYCnr0mP
	 xLalj/o5bxnDsWBjTuki+j4mtD5zbrp7f7NGSPEdTHeGpIEHk3PMmUyYpRQiJl2UjA
	 nnn0Doyf7DqWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F49AC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174612959357.12013.5631640503100558304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 983894c00f199200d1e3fc762042962972c0773edf1014a43554f28a284fb2ea
Date: Thu, 01 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746129593
