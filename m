Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D8B28EB
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 20:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0B1C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 20:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688331308;
	bh=FuhgU13m1oy0IjqSAEXa8urBLYP8HrPU1YAs1JpeSwo=;
	h=To:Subject:From:Date:From;
	b=s+2nGjsFX11+bvMJNS2kTS01AUi12KEv4hieh9Kt5HSq23HqBlGmndu6g5DDdMU0K
	 5/dT7zrR8dMQQ27HQbeCYNmsxsFE5UzX9caZafkQFg4qfztUgzGWiAvtvQdaiH+7iW
	 S/PwMGrFpCAZo7Vg3SuHejLRE5yC5afDunBKrRKDQPgd2/49GXkqXDIp29FOdE5meb
	 OxbDdyc/pf+24b9IWGORjR6nGjKVsHIzXWD1z9MtaqcSnQ0/kvPcWYihX8iNb6Gsof
	 f539I46oud91d6rQg0QCSpIzi/rTfmdsCqUV3HTvQs0XEU+0Mm3Ih27rjfa38fxRuy
	 Wj4sp3+oVozQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CF3EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 20:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168833130873.7629.4210036996132813931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6642e2af51a6216eeb0118569bbd93a28496b3aab486837c500a7aea3bad0cd
Date: Sun, 02 Jul 2023 20:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688331308
