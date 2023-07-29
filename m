Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6F538C
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 03:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0794C433C8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 03:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690602728;
	bh=nJv9uUPhoOpWRKqNEhOh1u2G8UktkSCgSvxWYxnnjy8=;
	h=To:Subject:From:Date:From;
	b=or5BZBPcsiBkVZuz989NS330SsBd95aWG+0q4qNcXFY5iEABiDGbWgU+v4Ss2dV+I
	 U6OTAshaKcNK7LEu2//bM6FS9vi4vOQedJWHDYADhDewSbwRIEowc/MxwMPfsjhWl2
	 Jp6koix20obdhSL59UfJ2XQHN+jMbF5tZ4lGxE/G715JnFIt9vUtBp1hGgxUZMldW5
	 0lE86MsNrA3JB0Ffew+zJSwPtQLjOJkfoIfzOhXoi2+56ZgBpgd8ZpbZnk0BPUR3Ol
	 vUuMcqRPtpfXxtKDFERpgPR/57BkL5TB7uGXScRXHy262OX9/xyPoy0gHu2lsKPZCF
	 Lg1xyE942U2Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E24C001DC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 03:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169060272871.10713.11888771230368534753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a771cb7ec00dafd8b60d703df81f6030d3324fca4d6e5f753b9ac624571ac7a8
Date: Sat, 29 Jul 2023 03:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690602728
