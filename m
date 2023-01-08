Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B991851
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90582C433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673143887;
	bh=xuN5RmewUvLtR3PeoB6vjYtVPz9NVotL07knHsdCeto=;
	h=To:Subject:From:Date:From;
	b=qSDwg8/wnLi8SrJZZHbFH4txXTF3nJ+dGq3nEj4yksXVwwJLjMKEePQLFtYPCgfFr
	 I+n6ahZfxjpdea6XjOVkNGJsVq1Gk6noDZkhz5k8VmMA9zXK7YOUbkmE5d2oABQBTo
	 3fAcv8/KXMEHOmHHSFikOxlsg6IPlsu2QC9K0cs2WYYzf9kumMT1O0xLtGOBhVzmal
	 iachtDU9b7tlYQ7qWxEKdF+eVHvLLjUo6K2NuQQKMkEqM/5Ilf9XbuSwBF0ICaHX1J
	 abO0iBFZXqxawIIyoNY0B1Lw2aIG6cPmklm2CqfWk0DBxACMmT8mmrMxbrKoqlRWa2
	 +HGFld3JNcrwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71813C46467
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167314388741.11161.18217249383421176106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d4ab472c103334d7816e7a424c12490860fda918f2fd64743c408c4f82b7e0
Date: Sun, 08 Jan 2023 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673143887
