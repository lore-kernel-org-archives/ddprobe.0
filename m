Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083B528DA4
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QgvQGpoe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D7FFC433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701857896;
	bh=KT5vKJ/8+TbTX4NMTC95pGVVYdqw23P9fRUMETORYhE=;
	h=To:Subject:From:Date:From;
	b=QgvQGpoedGwD2MIDr6RsTVgJEioSlRjySHzz0BCyn1APhInFrg2GrCETQy4NUNnfw
	 pdO2MZWMO8E/YGHDzU+4LeU/boYAkLZLKi7qjzEG7SjdJ5Pz+c1Dg9Kan7FkcVPADd
	 mpVVf3CAGsWPQceB11CG5h94BBQ7GiFfjDOYpmVdfSOOMfTDpDOicFrh7EMeBMBUaI
	 wX4W4RaI0Aly9j7JEafAO7omFHVQEAQIcTQoOnWVtU7mQb0XF3AR9ReuT6rixJifJP
	 ZqQurYbYG825tmNK+Ecfe8/hf65NzcK/W5t+pJPan2GLLitqd2Q3O5DGo6juYiBbRM
	 DNKTwJmTI9ftA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6210BC4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170185789639.23961.10617718262933159770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54342e9f71991e546dc37220c6cc500f69be9ea5db7c287e5d994e9bb882b7df
Date: Wed, 06 Dec 2023 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701857896
