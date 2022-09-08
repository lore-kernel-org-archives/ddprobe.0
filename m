Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4099610E
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DAC7C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662671453;
	bh=0GzAvxlyct9Nl+VJ1VCEbGDVmnKlBCKCn1Kq380A9hA=;
	h=To:Subject:From:Date:From;
	b=FCf+bfvfo4qiFY4T1GJTkjJua1AxbIOsTqDUCfMaE3ecvvR1J4FoRkspICoOVAGAq
	 Rbi5Y7hjfzknv8hp3uU50LTW6aIfK/pNoIbRMcsFquN9/yAuUbWEuK9msXSj3zsK0G
	 +5BA09zwBlx549sHy4Z26ODz+IUoWf1++pynNJrRX0wBY02eUt5gAmF1blev+rt+C+
	 TA2A4bOV/b6LJ5mcyUk7hpoVc6gLfRTZYiWy7xdEbefzsF+4Eab+gFBEHylsO5upKU
	 +IAmLeJky8bfLfbbt6kZLpjUS/yfQFT4pQoS0AjX3xJQV+jHGH7BbJoLOJ2GOl7h1g
	 luv45y7xku75w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5155CC6FA82
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166267145332.27417.15531446875404768724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639b61d650307dbfb7e3680039c28cb9f4a7d03fdf73d9b0e05990daa38e108a
Date: Thu, 08 Sep 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662671453
