Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC99820E6
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D76CC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671001887;
	bh=3Rb6W9tblOgAAIKdoA3dzIGVDAHHxx++pG5wiVQAccI=;
	h=To:Subject:From:Date:From;
	b=hByHD3XFQDjS9Bh9pr3w0nU3RYUnHx9ZDSXoOcKkRk+aIJV+rGwxFhpbrO8Y4ZjPm
	 /mY0kN2ECE1aLwJgC3aBrrz3SV4Npbh9DQZ/aNxRpL1AD8KRryqQD6j6AkthKiqYZI
	 EXGKr52jpiRZ6AcYgnL7CqwKoySvbUqnITDTUZ7ZUZTPqkkVmA8sb18aBcbJfshGdB
	 QBwZn/+TuyOVEWaEacepxYbj0o1LFTs71bCXRyj+5SD1vUPWr9FL4xGrhaEg95EnFB
	 A+CO4V3Yv5XhzIjZgBOZdszxG2pejTa9iYIl2PPp8gfB+xkIbxNloIM062we1o3Nxq
	 7a0KMStluN9Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61484C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167100188737.3847.3876312360795379350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a920f2038af457213f98094a8b0e99238b0d26c8bd0aeabed7c3d9c3de9f81ee
Date: Wed, 14 Dec 2022 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671001887
