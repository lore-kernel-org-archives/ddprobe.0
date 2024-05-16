Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4811A2C39
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 22:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715896943; cv=none; b=PmxSr3ya+ye1lVi4ho4jHB1vRMdH5gUbTz9POS+GxEhuGQnJBnnqUc4qKE/nqmFbWUyqOagY9CxWs2diTBkV/Z3je+dxzzxGpnWPkLcpGrsOOP/dqoZvQNAM5HDhojBLJ9w79p8sAgHGjigtgHrpz+X3vuKo54Rn1is+5onO5Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715896943; c=relaxed/simple;
	bh=jXjQ+9OG+p6b5sCVoIxnJ6tv+yYtnRQLOG6P/lYVOhw=;
	h=To:Subject:From:Message-Id:Date; b=d/uQVtanpe20jiTbCzD52TRWH8iCK97+wNrz0O8c5Eeu2NTcl8xNcqbTWP0nHmKaH9p2nH2dIQD7c9xNCRoGZV1KJdM9UznBduluw+5ntwKwF4kUdPSMQb84f2hOUYCZGiRKF+ZnVePchK8r6NI/VBkxc2lr4zo0aJPS6jUsojM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCUJAXnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCUJAXnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A32C113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 22:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715896942;
	bh=jXjQ+9OG+p6b5sCVoIxnJ6tv+yYtnRQLOG6P/lYVOhw=;
	h=To:Subject:From:Date:From;
	b=QCUJAXnutPmoUllbEKS2vA0FO/S4MXy8BOTl1ZZtluTkhNfVmW3v3a41Kw3CoKpIE
	 Du+A2h3P0Wiq04l7xIGIZOUdqroPIwiLWZuBTMX7yzJFWjQZC04tqbbisgsbejqm9y
	 xG1WN2+XtBVCQGC+3Uty9+DQGc9yPSr0Wxa0pOIJwnCyEOOUJNhxlDRlpSjuJhU/3u
	 Lx83RBLrT7ekHstk+tJeOX1BjML5UBGqFFne7MDwbkF6tl6cDP9M7/seOOIVOFJ+p8
	 XOR6+LV90zI2lQLySTZw4anCF1mmRTr7IEBQaGH1la/A9EpytmoYCrF+etgz7ihcpd
	 pWBZ7Rr7426NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF45C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 22:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171589694277.19802.2825903582704561172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 684697cb2bf4b9f2d707ee47d41fdf77779c6e30748d330e58e46f40ff183448
Date: Thu, 16 May 2024 22:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715896942
