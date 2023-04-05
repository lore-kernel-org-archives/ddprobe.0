Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FFB624
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 03:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE95EC433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 03:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680665225;
	bh=o3A2KPfIvGMq30T0gvYSGCemwlDLweW1kH3d9idGihg=;
	h=To:Subject:From:Date:From;
	b=X3YQYhX9VUR+aFzeiBzx4xUXTmXgSwFl3/ewypEU2MsURJWoo+IGFNAjPK+fElRYA
	 Dsqp/GnjW+oYyJJ7Il/AFOsIhMNZ68Y1rTv+f2QtJnmcyGOPAy0WWHvFjYE2DkG6V2
	 4pGIix+IiaVpJ9pK0OD1DBGy+H9vPXvJJCXKklC6Jzp1FMcFbeoGDL+w05iDRuBczT
	 2oaypyMbr06Ugp+o52HYUoukOblE0gv6qRgrQ4fBJvm/PUCOYLEjMlqEXUUZwyaFXb
	 gI5QGx2EpwnzELeF5Bz3lT1bhgnm4ktBMl7b/6W6TLu3acK8kP+a0b11LgkB+95508
	 2+Yi/JwyuMEIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4946C76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 03:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168066522573.8196.13053979345385789724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58d733fb1a8b84f86928a44d61953c369094bcad27ca007f43aeed1ec7c0271
Date: Wed, 05 Apr 2023 03:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680665225
