Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD40D3214
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A5F0C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669765854;
	bh=m1sBD8WAkHw2dcoeqLMcoukaY0GWq/L6xRk1csFKFHY=;
	h=To:Subject:From:Date:From;
	b=ayX73V4OhwQx7Mv5NtzY31kSpo3Z5UtI2AdbatJe0MdlozhJ62ycSuzrU07z2HOBs
	 N1UMCUix1jsjaS3qL1V9g6ksZKXWvJtBBlFgKmHC3eyrooLX5lRrSqpNaimwFcZULQ
	 BU6XUspgdv5DvV0MSMImnwR4vIISeoYu1UxyLrYhIes93IVUBnSwMiKWvKiIP1sJcX
	 zZE76bDO4hqgugoJczXsc40kIizxf6V4xnvb+xRjJ1mpy+OEhf3iLsYWaErsbBQR1M
	 QRqQV/HT/kC0b2tSEeFre1LRj9gA53WAeCEqF9Rn8TiOSCzQ63K1AwaJLHYQhqIElD
	 7i375snI74piQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F3A9C4167B
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166976585436.11757.12712167434773344002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed30d01db4d6f4da8099f391285a919ee9f3fdbb8d487ed6c5471d6db2317b8d
Date: Tue, 29 Nov 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669765854
