Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774DB28EF
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 14:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B32C433C9
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 14:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691330588;
	bh=zdGnap8rjcGvFU1ksAXrwljbPR64lLUEpvEdT+ZNivU=;
	h=To:Subject:From:Date:From;
	b=sfmDHVwu8qb36GAkKAnu66EeYgVcbf6ZgvoVeGP2IqpAO54IaO/O/ezKX74w/dbsp
	 prZHlMw1EDyELazaXykxgy78R1qJTw/wivPvN+c0MHiAzUJ15C3OPx16FZvyrsXVrD
	 B3xcsCE4Z/5EKA8wGpq1/eTppcM8UqbrztdZXml6MceZf1PyGlamoTCsKX/qjojkbQ
	 nOYS0HNODCCpxfylRvk2DFr/yLaL6UJxPYzETSS/3z7v2m5c5trFQkrP/xdW6qSBuv
	 vnoIiaJc0wVteZMmU4+bC/IGLNAYVEjTz8YjeyKhhOjHdIEGtbF+y1pWBX0G1OfWqS
	 O2vNMSZJFFVhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B5BC0015E
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 14:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169133058869.25209.6777141515891102413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e45d86bf83415b667940dc97332c7b6fb47368f87b2ec4ac9951a0c479416b68
Date: Sun, 06 Aug 2023 14:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691330588
