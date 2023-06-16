Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B05653
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 03:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCA5C433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 03:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686885548;
	bh=SgsuSG6Qdgxf3y8KmXkKZx4c2h1ColXYhYOzGjeY59Y=;
	h=To:Subject:From:Date:From;
	b=jD9huY6ho4P2g2C5HSgX4e0W6HNCdfo9P369zv4tZkau2KNVugOobfPyKoKYzG+qK
	 +S/jvSBIopFb+8prkjmqdGRBvyKxbqAPe3C8tSqZqlec9/8Bl9fn2rYKf70dwmA3hc
	 mhSXIs2WQUnX7Y0BbM0wdQVSqI2/y7qx1orOrDxhPnDTd6M94XrOZ7uG336VddEyM2
	 PGrDsM+hDYDNhppVkZSoZalv9qJU0xoeeoDGD4TdoN/qHIMpdTYn4QkzzsQ9rl6opB
	 TE1+jOAG0+ocVrJ93g3aDZ0A1VICmRCbeFdgzWisuFzCN7g7aZT+qMk6Bf4brsezNh
	 gpsas+kPCI9AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1910EB64D9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 03:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168688554871.11769.18116014677847684907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9021c1dbbbc5c2d5a7f2817f09c855b11ddf3c8ef4d19598964f78cc027391
Date: Fri, 16 Jun 2023 03:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686885548
