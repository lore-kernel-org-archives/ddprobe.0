Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E11A5669
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 06:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1955C433D2
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 06:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684303986;
	bh=pHnHXLCWEeCos+PqpEbi+gqIFM/WZafR2kaO6IyMmDs=;
	h=To:Subject:From:Date:From;
	b=drlCLHAlwfruoDFJ0uE2CB98o01Ck5oqzrFiQwkJGfKhuTOVvxH6nIprtpl8gZeA6
	 LiKlZmzJCbpfHUSyvanAAqd9kNOeTru5CdnZu/kF0plXYS5DULhseca6uxrW0z8eK6
	 87IAANA09G1UGHSDun/F9n4tuPvqRC5GTY3Km+JlamBmPSAs/bRaXdBxkQmkPB2fC0
	 8b3/70dpZL+OayZZoDkscxEYasqG5oQlfZM6q9JTqQvu7BZGvh12HWBpYZUoS9TUdv
	 8uHEkfYyIIno3H6eSpQeURLu2Qa7kOJMATCHjB60B0cvDt63aueRbEzbFGTyftNTds
	 I3td1VfOPOGgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D434AC77B75
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 06:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168430398584.9732.13282944778083869300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4aa53992c11a97b7178fcc1567dec2c7f677cf834828addb1f2d04bed64fbb
Date: Wed, 17 May 2023 06:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684303985
