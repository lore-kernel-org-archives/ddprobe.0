Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA492105
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC9DC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663372853;
	bh=C1hrP09KyuLZDubW0PSoOSrI+5NuhBkEHhdbFFJqwTU=;
	h=To:Subject:From:Date:From;
	b=Vsdz1TAA/X/JLK1WIx6uuA6ZNTU3ZytOEUPUK+cqy2s8Ozx7V39fIJP+xR1rDRWEf
	 ogKFyC219t0T+wSmi/sPCU3XXX9tfZK+K/DygW2UShHSb08jK01JxhB+74p/Y4Josn
	 JHFGce7fCtat5LFyV5AByZn8wfPzaA/PpluIAjLZarWdGhFLlKcnPRH5XcGMthtjZH
	 7v4ygxOBpQ1KKGDyTBGu20I2ooWuofjeetHxivNyNk11bx/6FKxFiHyl7NOrr4ScrC
	 E0d5/hI+Jil2W6s1UZp1D0xCCegZcNJY0RkCGK8oy9QqKYyGnChpaDXWA/s+KktOCI
	 7rqWD1dczxn3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53843ECAAD8
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166337285332.25343.17779553841365323394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aadf3fc192b7aba1347b6e0342f2431e19a267e6814bd52970186ff8780a9210
Date: Sat, 17 Sep 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663372853
