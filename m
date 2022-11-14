Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82063FC2
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67353C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668423654;
	bh=EeK4sIVq2q1TiEdQzMfXrXJug1jijX80QlfFbiuEyrI=;
	h=To:Subject:From:Date:From;
	b=t2BB9qKdJ2fOujAI9VDYXlE0QIkz1Yqs1d8qVk+tQWnfvyqrnLoopE8L2Z1N9KTSb
	 6HhkM7uPxgIj4cNBdezXmFTyB4Agxtr4tZSLsnwe09tBcH+/a6/emkfACTFZBHECXS
	 chOZ0x+iCXZnEuN39KO6Sp4vk7rIP/CGUS0s3sv7GFPcVsliO/aT8Qqc/mAFWvUvXZ
	 2lHnD+CEI/rn2XEGwusUP3IjdH8aYx8qQVl10PtLsgfDpELZSxBHtoRWKCr0MWJz7b
	 IKG61yQmrB0Z4S69ygFC8zxNKq6QByR42BWZInirRkNYT6H5NiYEWrmU4DOZQ1Tz9h
	 7RO3m5DgiLtYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB7BC4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166842365431.25600.15927687163946385590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71032b0930bc30a1105003742e0226d1610352bef172bad759d12c4cb141baeb
Date: Mon, 14 Nov 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668423654
