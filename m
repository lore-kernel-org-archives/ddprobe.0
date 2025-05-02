Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9CF189513
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746160794; cv=none; b=GGjTMn0X18lAybdrJExvDfJawSI7nz2PpzPU3SUFosP0OM8bk8BUjpjWWuZ9UR/O2ZvjjhZk1qYlnejbTcb7P2IJHONlDzv0AfPX3WBeLxeVQ71bXUaApoupf79NKm4Itgjvs0syXf4iPHT/uov7xlbiqk6laILA/r72I6TPn/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746160794; c=relaxed/simple;
	bh=TX7EiYUOzsy/X0iF/Tn2kIasFdnJ+qWC+I9HAkO2hAQ=;
	h=To:Subject:From:Message-Id:Date; b=nuS+I9j49b/nASvG2ItG61o7ptPWWQc2RKIkUkV2emsgQINxYo3pfJqQW/6VBRKSrOV7wtAQlUAVeukX/0RM/DgnozDqFhWccNYezdfznz50rSLee6hiy6QBMi69cZ72gP3zUg50XqirznEoxebKKEbp+ntD/YTIyIQB3MJgmb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgJwSKCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgJwSKCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D39C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746160793;
	bh=TX7EiYUOzsy/X0iF/Tn2kIasFdnJ+qWC+I9HAkO2hAQ=;
	h=To:Subject:From:Date:From;
	b=bgJwSKCYkJbVXpJ+a9FwJAbI3Q8bVA77MKMGO2Bj/QZNCyPbtLLVuL4wAy1EtQZYa
	 YHpX9Bv876buQkaZE987r0DXfGr7hqogJ3dTz7Y8c9Q5P7ZDPnicPuOa+C+QpV1Zqr
	 C8rRmi111OuZZ/5pyhQLvWJzG9e2ITWl1NUkUZ3U4zcQDbUaU2tQ5vmqCq1m1zD8cu
	 PCBP/TwiM/89aZctDPAps/jKnRu6YxXHn3OzV7dQFZDS6cybblZ2oGNLVIoEvbOTKF
	 EkCyGo0rOMDQffinZ+Moirn3pfbBwxwnhqUnbXYb5Lpzf/jLQlhJEoWTw6I7sGKDbH
	 Y8NI6MuCMAVcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E798C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174616079357.19484.814363979878340396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c99e3f3a6b7f88a0599b0736381b33621d1e90b307dc22eb963a10b5b9e59b
Date: Fri, 02 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746160793
