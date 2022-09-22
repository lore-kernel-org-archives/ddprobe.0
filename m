Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1E3844B
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7054AC433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663806653;
	bh=C+36+rdQZLPfJTDN7qFLPCzrv+07OLeQ8KpB6N81yLE=;
	h=To:Subject:From:Date:From;
	b=i181BuZsLl8BzrXR5udnRpa1hA8DJjJHw245RIVyNhXkunH2gBY9cGnF/RVWvzkHW
	 MklFG971SvEycn1QaR9+euZKVDh9gc/elbVAcC3JbL0bzkLpQ1SsZhiMO0JJDRgbjO
	 bRM6oTzTL8mgfW6tJDpp5kHb8ezXoQoxtW4fBUw0Cd6hhiHclUc4suFUkA8R/FGNw1
	 vYkzTwR5Bv8fY8voQK1jBAiq1vv/JgWUfMjCFiM9dDvnCqXHM5OWrpRrus+fZcaL8s
	 +ItXg/ktnQzhfR49xnHEPEiW7sY7hsp793PLxQ3adpLCgeRG5L/ZBAdEfEiaTqhJNW
	 vXphMd7Oc87ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54DE3ECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166380665333.24229.1128585826509266186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efbf1b714582067ca8aa2e5b39caa6cad2dae5ffc18d89fda34f2375cdb89228
Date: Thu, 22 Sep 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663806653
