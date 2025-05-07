Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44D478C9C
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746592794; cv=none; b=rm22aoljku2XFj3eLT0St/b63zHgV2nHB1W8jEWdrWAouKN+3yN57Bc9vpgpzMwrgGIqt9s0AC/SssEmUl+9fJIIpPCe1HzpGQ6Z+OachygOM6pUYWVoUXCKh+gxGyzpDoZm6oZu9drJYXB2CAPc6sf+K3fWgN0PEvmN/FTj8hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746592794; c=relaxed/simple;
	bh=OcCp3bx87CLJo2izAu5XcquTr534Vzl3qAHixTy6tZY=;
	h=To:Subject:From:Message-Id:Date; b=slTr1AW7PF3FEazRVnELMiGUpzQEUyFexBnAkeh/GTcItjGMXCYUyd726t0QXS2yQtL+yODN+HSW3JDhfq/dmtjiAlf3HPHOUuk/79i9mhVEeq4GrBPjE1m81uq2GW+PuSrP9Q8yy29nWHsXinX8E9p59RJEV4ibFbglOYVq4IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2OgzuR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2OgzuR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C7FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746592793;
	bh=OcCp3bx87CLJo2izAu5XcquTr534Vzl3qAHixTy6tZY=;
	h=To:Subject:From:Date:From;
	b=O2OgzuR+OLzL4eFynWna7jLF4dv3oioZb0Uyl8hL6XxfAZsI+nf36z81YKf55B++A
	 Deu8bP4hMl5JoBJFlZ5CHfeZZrxYRzVfz4CrrOvOdyy4foot/Xd4/vAtGFmttFkqh9
	 OAEJPiEMKKh0ASxFPJUGTpMXKoZ2hPykdGVGcvEz7QV5pTwgmmEbmdF6sHM34Ue5IK
	 jdfURojOe4wHbumZ4v+sPtfRbXK9ps+q6PaIaDhITVPQS26ldzV+7wYSc+NqA1SyX+
	 /crpnHZ/VlP07SdDtRrGUaT6L0xGbGCB7o3QnYvDtXeljGMfCen45XookNs9KwzYm0
	 bRhbWslMkxszQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6E5C369DC
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174659279362.32084.16499497692165981088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9571b9c58dcccf057159dab74c4806843039e0e7c946677154ed63495a4b2819
Date: Wed, 07 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746592793
