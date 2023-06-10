Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75BD6BA20
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 07:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF190C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 07:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686383945;
	bh=X/U4IPaSpBMzcLuStvdt5BqgbJx7gcnD4Bd7BR5HA+g=;
	h=To:Subject:From:Date:From;
	b=oHvCZnpY59vGtEXkBJfHh9+zBSEVv5//3lAMFWl5YGmHDrauQlOWdptjFSytKhjwf
	 uHdsI466KsNvPSvV4LpU9OE/dkiHeyd8OLmjcegl2ndIra43sOy7AIbX/dz3h3KPEL
	 i3HH3D7ktvvDAcaMU27t5mFF4JRg6gIBioVvtz9FAtTtHANz4ubKdZQBCAkyK+juks
	 2Y3iqcudyvC5//xXGKqMAd/ftyunomHHDMVXrf0CpEhchJdkq0AiJ6M0tcltIbd2pk
	 kFtHge5hr0ZKWj7tCiV8AGac1Yfb+we96WV9YCM2JtJRgfQeFAZRnf4VEEhgaOV6rP
	 11T1fEh87oMlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE4EC7EE29
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 07:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168638394575.8495.10565941579387998173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179c04b556a6805a856e211df136c1176e6f430504d7ed4e41b2d367cd399359
Date: Sat, 10 Jun 2023 07:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686383945
