Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EE610E1
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 01:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED6A4C433EF
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 01:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685496786;
	bh=rCbQGXmkkgUd9AOYwYYk0r8iGNBx7eK0LcPv8Om7cEo=;
	h=To:Subject:From:Date:From;
	b=JeKs9/zeTeLkWtHGkyvky+1SrWej6OblqtYhLa+NQLHSzkuBmCsVVXRAEhmNbSnWU
	 bR0hp/jFN3cuhs1qkSHKO+6WA5FIof0x9/tRqSiwEQpqNPmxZ3C2PVIzBdD2yvga3p
	 ju5f8y1+QteyXWW8PEsq2N2GWADX7MwvsIsBnOU+TCKOgYeEFCPG65JAP1hComR9so
	 JS83mNRJ/paZlYv8vebIMi/4oSpTaU+3LeM7ieV5hTu5q5vepgV//qBTiyWzYs9b4r
	 +BlIPIAP5w3rZReRZQ9ORIFE78f+0VyZHNVUfk6jDpuMF4A9eP+vTPegQqrL5DN3+g
	 5YEGqQIoMLSzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC498C7EE23
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 01:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168549678582.21003.7577956118607727929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a8259f4e1cec588aec46a5e96a472c6946c3bf76e1253e74e5f3e8c429db97
Date: Wed, 31 May 2023 01:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685496785
