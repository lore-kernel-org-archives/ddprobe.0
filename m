Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445871D514B
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747518595; cv=none; b=DmlFcOtaC0tKydMwyyAspGtyUjKgGMY0T8GDwmtUWRBjBA1uULTfnZ8taPp3NixtAN6iwKv14WpXwfVwsE7VqxrqI+6rHm5uajIDv7XoQzUHQjJV/Lm+MrA1176us1RxsQLEkuatpUySgFTHXCoWMhsKokbOfSq8vPB2VhpzXbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747518595; c=relaxed/simple;
	bh=PHCUqgpQxnSEHJoxIEuuLYX6OvAre2Xwgd7FvKpp3BI=;
	h=To:Subject:From:Message-Id:Date; b=Lms79xE/i/LpuICBA+l5LYIjjwDQwg0AIjGrx3v6eBthKGWsOSZAV3XN082FunQc5uzckgvJk2Q3JCUKiLMD9xbMyfq178jRgoCDpwL3qKzfy2JJOaWVmgthpqqghIFh5DBMgrwQy/vfNKzqzi7RJG5UWoA2wy8r8dZblueSWpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/bv9mcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/bv9mcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7840C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747518593;
	bh=PHCUqgpQxnSEHJoxIEuuLYX6OvAre2Xwgd7FvKpp3BI=;
	h=To:Subject:From:Date:From;
	b=a/bv9mcWU0iIZAPeM+M+SxO3JpnalIiiTJT9EEvRCNz1sjr5y3cZ57nIYg18+qPdD
	 P2k/1uTLwjK5K6pCbKv6u+uZ+MI2sA9uDAHsJeKLylA2kTkwMWxFxwb6iNSHvCc9Qj
	 Ac+dcC/OWCjBloz+h9SEhcWs5hu/R9RFveh+vogl3whMjdC5UO2xRxozl4/gxDXvKF
	 0Z4GUX71KnoPFkGSfu+FRN7cbozfpXKPWd8YZJwkDjjq2h+ySL9bcd+T55vufP7B9m
	 NIreWYJ1chTE6bJ+J0MwFolPHor8mf4SJBf4Q/O7MiSblmYaLSP57lsy1xivqbQzZT
	 UoEe5OgUd5MiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954AAC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174751859358.18135.16401901569447633328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3afdd1320c529da2b85c4b351374303a4eda50ad49315a925d69c00c18e8e388
Date: Sat, 17 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747518593
