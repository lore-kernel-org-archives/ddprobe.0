Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FC87B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 21:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E736EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 21:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678568765;
	bh=+/DRCRhxcjBEvd487DKwdoKzmmo3Veq8ei8xFuXJ7Ds=;
	h=To:Subject:From:Date:From;
	b=aSInu1mqqD1NuHCFCdq7xZKLtfL59jA8t7HlOKE8bJFbiXRWtNQYyLJyUxuH5+aLX
	 ta5tpSNKmSk9/J4rigrkbtgLT6P4+DbhcSKZw6HbEq9oaI8aB9wfCBkhlqViKG2eiz
	 LngxNRhpX/WHveokI3ObU5aXfFuifTZSuORfBsBsYNXtrdQn9VyMGV+OgmXDbMGN/Z
	 x2rbmjIyoR789LVeEsW65Spn2DYD4nET8YVSFnTZdAohFe81k2wZFtfxlbRdfeAxfV
	 VZOlC6dvq/J9rnEdgtr7t/vG0HcnKAowAIXkTolQl/YbAMf6pl686agIxjf+baGZlT
	 Ie3A7oY56R92g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C90C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 21:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167856876576.6253.10358882030352699598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f32a6436b2ab43e6b4288908d0523732a18be3bc3052aa7e6d2efb55e91378
Date: Sat, 11 Mar 2023 21:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678568765
