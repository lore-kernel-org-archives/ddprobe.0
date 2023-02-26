Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378B1291F
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 22:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD63C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 22:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677450965;
	bh=0owA8LbcLbmM2GoDf8LLC2qbgZB+8hbtCLiM3BaRy+o=;
	h=To:Subject:From:Date:From;
	b=Zf7iVHq2LG8rQ/utwrGflb7MFOj8lVlSHxaeDHpGKACQkZ1OuxRkHkdYuVBfGmqZc
	 lWscJAjE3v0bjZE8kpW0aTgsg6H7wpKef0b7/KvVokETg2UvjE1qLr2KEieuHjondf
	 3JMSrFq1AJttWHSPJjyLUNhFidPJ4TqAJ6aDQdNf+HE3OraOzRBEgv+0dPP9/meeaa
	 PZvfseq4cDNi/iTsxu9k+GTgDEbgio9Rp97jmOzgLYa1HawU5gcuAQNGXxd4npkGOv
	 sYoTlUO9KZ0yxgCCx1cBHQAwRlSzOzF8HQLoATh8PGX/sydx0pMegO1qESONUl1NUa
	 8CXSOSxzrmMSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC1BCC7EE2D
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 22:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167745096576.26105.12435077720613410181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6180cf2946d703c167f439540df34ee862a11d03dc4e05b96195f63ee1c307be
Date: Sun, 26 Feb 2023 22:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677450965
