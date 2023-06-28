Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673265C83
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 06:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB78FC433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 06:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687933388;
	bh=hNvwSBe8n9yBJ4UY1hJhrnUUmTHoLYoZqxz0+KNm6y4=;
	h=To:Subject:From:Date:From;
	b=jkG9fAuOrb5HqXJVqj/qpgdSPkoahCb1/xdRh49PerxsZaN9RQqEHmj+0iaArdm6l
	 27Z5tusrJ8PK0C6uPLIQppJiBwTXCTdzV7tcg75yVPLsHoGoCMb8e1uaEVZNzOLgjx
	 g/5oVHSebopRcUAEDyu8WUSR/ZzFQT70WRkj/mqNFsPwzz13NONNcQmpbSYUlSP/39
	 w+0SAosjs7ePqExjF0NXilLgFmqBaqxxw3FoFtTtzdZSLeexWWzPAMG+0Yq94olx1c
	 gAM9X73AJqGt8Bqe6bVnFhFYg3jYpha0ozXsNaF3TGNXlHewW8bT1K3R9g4NwfhU7/
	 aUXIHNbS+O3lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC692EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 06:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168793338869.20030.6873219475763961300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 059e2731460fb6e5e2ab0593eb794200b099880ae2801b8b0c82e98e133eede1
Date: Wed, 28 Jun 2023 06:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687933388
