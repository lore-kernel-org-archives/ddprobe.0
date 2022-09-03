Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8C51363
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72755C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662165653;
	bh=6y6WyIzho+rXCk2VQD03/qVqQMpkXgATD/fRl4dnyoo=;
	h=To:Subject:From:Date:From;
	b=RPeKA/z+/HaYmlKDA05WQ9EnwTNhjLnbPTftCdfjA/Q7RH19OscYCuxNF9a+BTnEQ
	 bFemDoqUCQ5s6rVjSocms/KPtegIdlz+AeVpTPPXvFugt33SM0hLRKjSJnWyKYLHlL
	 T4SyGf3jF4ojjtNPmNt5PFxjyx+ZaxycxdFlmn40pKlTLs0j7a1VNWxvpxHBZBuYre
	 STwoKrJNUGf1U0MnDEAYOiWsa4lyPfHYVeMOGp0EPHYjmyHNfhJFhKRM6Jl3MD/Ez0
	 7Yv7zNvIfj7EvRaPKNM0EO2PZ7XYo25HZTch7Aj85V6/vbtOIZDah1h5CYgkvsVjth
	 Z0mYnKOS2HCOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F47C38145
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166216565334.21706.5340948606642179706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cccbed5265a1309c5104c3c8bce07c060b66b8b0e0a597c3bdd55118bafbd7e
Date: Sat, 03 Sep 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662165653
