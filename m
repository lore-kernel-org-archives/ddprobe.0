Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243022C0F96
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767372234; cv=none; b=WP3AU4X1EcnoS0YbfhZGv5vxpmEqEd5DTJXuQSYSO4oBvYTfIZ5bbDit6ypz4kDQeSH8Xy/5ArHjQqHk/hi4rlRiE0luGCv9CjRNmSiu7lJ7UBZYCXr4wZmB5KM+SNNXpGXu7HAxH0dd+Xgl1LRbAhNPiS10tiv7AnmQ/8DO4uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767372234; c=relaxed/simple;
	bh=PGwl4BpPpX89Q9sM50Bbf6+V21n0L3rexWBTHfgg5rg=;
	h=To:Subject:From:Message-Id:Date; b=mpRE78AHw587gzD0YlIjbT2BTd/LVnK//vCaGDaLAS8XBaP2kJa95BHB7VHKIe3d93z0ZI60irutcTFiExArz9eB8dcdx1SQiFNlZSCxSKmrfuLCBsgfRWrD3H+RY4NYe3cXRMuyDN6aiX24LqgJ1vgLoQY8pPiIcdnD4Xa/KJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TE8og7EM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TE8og7EM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F8EC19421
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767372233;
	bh=PGwl4BpPpX89Q9sM50Bbf6+V21n0L3rexWBTHfgg5rg=;
	h=To:Subject:From:Date:From;
	b=TE8og7EMjfAVwihXW+TPUAMmn6wURaMd/GaNz/sY88Zov1hKlVl2QwK32vNQLLAzz
	 nigM/f1gTJdNa1nMKcHuxMDwYe0tUTak4xTKyBOQ2zbF6fFcoZJnWANDeBj93MNTmn
	 wgGp6fsl+tFqnZl45lvl1zYkGX3VJEjSsKEHnBW6hY58BHH+0GjGk2dkaUXP2eUXg0
	 bs9tr8P6N0j9Fd07S7Y53zYYQqhm7Ccsv6YicbgQmgKPXZRTfmervCgnOqY0nJEUsu
	 Jv6NOKB/ur7iboHIh9SiBuXUaZLBJzWdujsPq0XY96Y8G/RDUAe9C87/CpIU32HvjB
	 VlBn2Bg4kkZGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D896FA3753
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176737223363.23099.15930033624803286898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b05e9ebf6b9102c0d60fcd8f39a9caf45dba3435248c99389b4e25c81e0479
Date: Fri, 02 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767372233
