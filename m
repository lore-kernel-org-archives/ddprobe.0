Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF5D53B4
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 824EFC433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671665487;
	bh=w0tJNWY4ied9IlmCTDY+9dV3gLxFSYqnrFnJ0ZqRQQE=;
	h=To:Subject:From:Date:From;
	b=GSRQuuKbFAehDGJE3w2PGqp4KmNKFtwR77efxhvDV6PxJ8SKhNqV4SzJHQelNgaKv
	 6Jcu45/kn8RuCiPlaLcgEiW0aUhGpuOv5d2X1hL5dzUHFx54BKwMuQc+z8FbNeidN7
	 R7TYWCygAcQ8rQ5NwqwGTNfLZ9zeF2DtWCNkYuChRT/+sd1p6X945IfTqerhfVq/0h
	 X3TajdrwOczgx767pZSFvzv3lXYSDcPMxWwarsgRhw0d6HKUE5dUlBQ91evr2HmcWa
	 Q1GDzcv48ZT7HCcdazX5S5JyU+OgBuhTAjrgTBYt5TM12o4P+5vlMCpwX/hzA8gcgz
	 iFBbcQQcShzeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63407C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167166548739.8191.1590435682848092102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20bf83a6cf1c61432bdd6f2cf066a92fbc040eacb2cf5f1d2139b2c7bbfe5ec4
Date: Wed, 21 Dec 2022 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671665487
