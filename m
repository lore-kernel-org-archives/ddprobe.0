Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A332A4C
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 05:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7B60C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 05:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676094245;
	bh=vKGvdR+v7gMZm5KudtOCdIvV1wy2nVJBVpGp5KNVS10=;
	h=To:Subject:From:Date:From;
	b=G8exnasBhj9fO3/ETcpd5aGcVE+ODLGdgpFi+BuVPiD+npKKmlngw4qgCerSsC3Ve
	 s6xC33iarApjiDsgomgY0pU48yzmun60Cu4Oqv4rOri8lyhpCULWxfvkLlMO0G393L
	 uobi+GRmOLGQeu4eCVqODUrW6hpcclkIFAkDKCh+H1H/PLIDR0RnKwbY9WM2HHf3Ne
	 cMowT0Te0tlsCjyAMidTbomlu2GldnCLDyoQsOJeI3R4Zx/4a8dA2/GIODesGu9GnF
	 i5Hk9Jv1NVqUvIPBj/QlWUzGGoxa/6u0CnTvAeTd8JTR+blBzvqrKB99gVyBXa6X60
	 y9eXmQFH6IPVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5514C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 05:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167609424576.4567.9894518291459978822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f429c714460c1ffc7757605b625716254ad26fab38b83f56d7656ed4e072f7
Date: Sat, 11 Feb 2023 05:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676094245
