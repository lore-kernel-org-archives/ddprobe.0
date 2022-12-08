Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49D6A460
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F22C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670535687;
	bh=jFx/kLn3KKmx1HoA2TOCWohE6czv4HAvDBlTDsjZ7z0=;
	h=To:Subject:From:Date:From;
	b=DrsAZ3ky5U22Fj/PIIVkGdgFuvgbtsHsPYqzrERTPizONMXb1Up/mbAF0DyjxJxd2
	 Idc47yIjJY4G3zUE3zGlXOnNgh8LSDmb5emrdNhI7aW98n3/ryLlywWrzldH667fPY
	 dtqlMl0JaDbz4JVewLFgsz9olJCgIIRHRklBh23JwVK5cYNTfdVlcJZy51uPVcBN3O
	 icZ9vuOQXVqH750SAALqYavyGZZbeS8FBRJkpGRia41Rnk2XXK6ORFEDLYdhxxKStD
	 zWvo2d2B9GsAS8k6KHyMTJhyl6HH0E75AaPBopGTGcwnFx07MSfsOWe+ZA6UXKFanO
	 B93XVkG/HKV5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CDBFC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167053568737.12488.13024048834530130985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90ce0310e528902f12ff651b729ed297e413da1f3478e37d300e90fbab3cd1a
Date: Thu, 08 Dec 2022 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670535687
