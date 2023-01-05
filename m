Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1687B
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A1A1C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672884687;
	bh=UEvnZp53w1lPdEp6suPpnIWlxyJ9rVKmuu9HX+qh+1w=;
	h=To:Subject:From:Date:From;
	b=KnpqAq7YxquiXvEylZPNYiUR20yfR1aNs/eaEljpX5r3SBAVNw6puCLdU3s6SQQiv
	 7orgYTzhw3euOxO0WhDjLm8s1XogRZyrFOeyaFWAnyTVrH+y3tXiizV8IXW+b+XqZG
	 GC8FmISVppLCEDJ8n2f/WnaF2iRA3iWB9S2HiMu9WDoj4nYzR+XYfvYRANWFvzv737
	 ZuG9Hv61kZyU5Z0lHsd5XgkDjvskmZlu2lT9ZYiwmuGhHUdlyDA66u+xkWiGiQxIjK
	 T0Ewrj/sRktvoILOlAFAZNgorHbDQ85KgSPJCCwa59U3ynMZkvV8LgRMxHazrOrKcD
	 eecUp/lNkV6QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 632BFC46467
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167288468739.9902.7157319661240547336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d821c873e7ebf95ec701994e8237a19de1526e6d05992694e3484d90494df4a8
Date: Thu, 05 Jan 2023 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672884687
