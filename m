Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41B57B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86D33C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671939087;
	bh=EKv8gXMBdfpwPGALKCuUk2uXn0W/ldiyoc+5+6AKtgc=;
	h=To:Subject:From:Date:From;
	b=sbiimsE5wB1acTyPR7GoaUWvRezlR3Wgz6rbU2IINE75WAOJfffbv9cnESU7BGMWJ
	 J0bojMCLzi4qBcHuA16i5AOfTe/jjEa5SLg5kOd+LVox2Z2lTVVNlv5iVlPT752QpA
	 cgWiL+vmStjQ/mRSjBDCZMXDA4qI9XPvWh1mt0F1VcjluBgPMe5Of8q1ysaoaF9CSX
	 UoeoPjiwxr9QtPNaJdgFKGSxwIQyuPkyZTrKAsGzpr+RUrUhm/kBB4NvajUh/BGkuY
	 h+SrXG/Hv9IwkWnBpZK9rTUYwtrSJZRaOEi4l+f+a0LbY0/UptglY9F4I3eH9XDTM/
	 l/dFor9f0SX7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65116C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167193908739.1397.11665957777555165744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d1459de57f6e8184f49179999b1192ddd4341c474a6adf06c3371eda02698c
Date: Sun, 25 Dec 2022 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671939087
