Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1659E567E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riZ7vPkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD7AC433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704032896;
	bh=CqYn5wGtqzjFh3qW9sdX/C3meVRm9W1qZLOAwXRaWDM=;
	h=To:Subject:From:Date:From;
	b=riZ7vPkOn534LgkQeS8sVKCH6x+jiueDfy7XbUT3ULeb1Jmpf/cBcIMuLejxf4/ZP
	 B9sjbiF3vPFSNVW04KLoJiCtJm8g7YcGHmdJ4gu8LoDqZoSDaQj6EhS/gviNoGNfYd
	 lEa0FdGagqXcER1Ml1T+QV8CHyHGVstDtJYDDDvpxJ/AkgZJ7+2pj7ojv+kaQIcanI
	 aVP3mY3PpnQZdkBDXPZuS0qx5Qwb+6EIrkWi2mKE2042vB4GEn8+W8pd+3OFyYDar/
	 JcIoOO0EYgFX7PYKj/wzUuUFS+YeUCrCbYrJtqJOnVcxpYXND4PFxxap6nfyhTVJgy
	 tTXjmGDxR1m3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 629C3C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170403289637.22634.12413156241498594813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee797bd066d59a613649b8247648258f881f83b180019ed1a54a4ef42af77bc
Date: Sun, 31 Dec 2023 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704032896
