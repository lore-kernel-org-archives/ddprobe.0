Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDFD720E4
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69D01C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668854454;
	bh=Z5y/TCrK/wOIaJJxBe0Kxwe1fabm1bKUPgXr2OO6PxE=;
	h=To:Subject:From:Date:From;
	b=SGBjaejJ6Wg501xM4MioptGLHRinypH2sZlPZME6faAO6NBdZ1lDak0j+j17Tz610
	 /gxgeudUOnoNPVVODKUEzMs11YDoRFcPodXngbC3pSC1TpsJO6aFSVmNbojlSDVWZj
	 da6oRmftZtPqspsh7cvuJtIrlNlRTJ5UqHb9cEzcRpZoDo9BCvE85gBFLWJpV6uK+W
	 ckQTLSNjNuF+9l3jYsWO3UdCvH/6xggu+K380SeQoP8m/TSL9PSqfXjuzR5HanBEAy
	 gal5vExtxR5N3QqTD1Ool9S3o6adu7pBO0HxsF9EdMNrtEWh01AN9njqkcAft2Xf07
	 1dPlIxpBvUL4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5370DC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166885445433.31185.9980059739698852391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 777ce63f22e1510b2d1fc917d59aa50935243401c349db23712ffb4bdf078b5d
Date: Sat, 19 Nov 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668854454
