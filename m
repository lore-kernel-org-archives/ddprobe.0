Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C4D7E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83DCDC433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671355287;
	bh=yFpcgq/gvMKkeDtPpE7WqTKbmLh39iyInSYcKF5ofjs=;
	h=To:Subject:From:Date:From;
	b=DNCSXaKVtb05Dj1O2R2/o35EJ1pfh/xJ2b7u6Rh1sy4Za48OxcY8fWn7Tqw3aJJel
	 I7h5UQAWcVbu7kOREtDPMGzggMrw0gt15FgS2t2t667XdZ1aX/Qwl7Rpbi5gaiYmuh
	 ide7245fzrjhvyGbtTP01+gi4GY9mhjWYhCtkk6TJC3CWQ6Wbgpb4e0gm9+5AvtwFa
	 mrhROgykaBDmPpDzatIA9Zw6of4VzHZbM58xBeAeHe3AvfuXz2X3g6Cl5cXvAN6nMa
	 J0ENQUxec9s/8P3mJJM+SKMLLrksHkfDy+1sA6/MIfW2+5s1KW2mzC/5zZm3Fvih1f
	 WIiXJ7/008Qsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68DA8C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167135528739.23437.12163523699094025247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2920b6a6545d82b0ffa6f0a744460e51449ac0ba1b0f1e8c06a17fa90083e103
Date: Sun, 18 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671355287
