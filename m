Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4DD0A473
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D8A4C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668801654;
	bh=MYOv6VcfcqYWsGzgjIkI408WWeeCewC+IwF5zGAzAdI=;
	h=To:Subject:From:Date:From;
	b=ij10PgzvkaiUgegOFNcEuzyz7EbjJM3NUmb4UU8FWQHhKqbe7SDD7A0iAkpUSGbsm
	 mHbDxd9nLHpqycOXT96R/xC5a3ezD5Gy6Jaaqp0Wxm13+uDuh4n9n/JdCMQnfNHPt6
	 MnaXHwjM39YngVHWg/EXZOoHJprNUGqMOUJAIrUfKOacQOYBrP9MikzRWg8uAl6kXV
	 +R4pnhmZYEGMLHec48a/+/WzJFkYqr4foJhlzQYNY3N8tcKcjReqIA6rEYzh5lnr0a
	 /xcpH4ny6Q9/dyJ4ISD0SpvY6Ra41eTU4TpC+UUOl6lWP1U/p90DjVUnmYXhzK1dw+
	 kgr3WbhuXvf0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA4EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166880165431.29746.16987717783389697471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b628fb906bdef39ceff1ccd548e5ba2831d04c1a85290e2c7c7cbfd092f0ab00
Date: Fri, 18 Nov 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668801654
