Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79AF97E0
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 02:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFDEC433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 02:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692930848;
	bh=DgrfG3TS1TVJBLKzSyuBk44UI5xCZesRb9Z60UD0HoM=;
	h=To:Subject:From:Date:From;
	b=oxcoUcrNsASIBrkoNnehmbJeoMcJnV2C3qdESecs4z3kZ0zVmxDGQdxaaN8THzPQ3
	 Z66EmO6ohHTomiEeRZRdBFxo/9fVMp4sVokaiipnPBHm+kdO48RF4SriwQwP72Lq70
	 IzBC+bxzYMq/4ajC9Ot8joI61g4P8YeXSFhH33pXOCJfTJekKwJ2e/a7YOqHboZRwb
	 kQ4qdt0iJSFj7BhS/9CUqvAkIVLsRnJfu4BgZmeQO3yKisNkR93cCR/4KY1lHheSck
	 lo8onrCOmoeVVGR/Y+5CRGOTnwWZoWuTuFYpojIJrAsJI+S1cCWBmbKx6QNofX2d0v
	 bxR7E7DqNvfuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0237C6FA8F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 02:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169293084871.6092.5513172996618550453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab69d64c2c04ceb0184ab466edff583cbb750ca4fd725ab76bf6f0ff2544840f
Date: Fri, 25 Aug 2023 02:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692930848
