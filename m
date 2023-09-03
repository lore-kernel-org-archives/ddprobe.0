Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C418BA30
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 20:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA9A8C433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 20:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693774449;
	bh=/+rllrtheyxVc5lAO3t/FvSfo6lBNRnmzpR0FTgRfow=;
	h=To:Subject:From:Date:From;
	b=dRhXufeBEzocZuGsYu13oK4ZBDGvHD3h3ecoRewcMNf9uvlkP/RrKL02FYWERSr1m
	 +4FTjxw5793hDIJZBj233djrOyhGIKAReFNF2GkDs/vMvV8BvpI7Fw0lSBPJTkjLTD
	 eV3pjUqxmHIvMutsq1g9CQHoAoBFqgKuxwk5hulzqes8DczmqW8oFv6AkdWaVl+yyP
	 7U52YeTg7AIlMCs4+CxG+sM7FPSr1bONx9bbWSkyEdrS6rnvg1OmHlExh4bbD+hEg6
	 gU6nhZFNFnjK2QOvErWXCB7qfEu4ynBJETftkv1xVNm3WabOlYJRiqJ5NEIZ77C8Ei
	 YsjP3BOz5OWNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4675C83F2C
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 20:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169377444879.5221.11430399373766757209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b0f039164dd64a4439052b63419883ea8c746a7f72ff5e84e5e5a0ef5a47b9
Date: Sun, 03 Sep 2023 20:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693774448
