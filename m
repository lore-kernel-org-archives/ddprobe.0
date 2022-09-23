Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F5B8B38
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F51AC433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663911653;
	bh=Rs9wLTayCuBPgRFLSWEEghyJkM80wOEATGwZQ9k33tY=;
	h=To:Subject:From:Date:From;
	b=GZxNKH/nlJMfCylqzo1JtuYEQTHdaY0VuKqMFf8MVl8YGDcdZTP3zlpwMIHdCDjre
	 L0SWlAJbAclixBhtnK94+MK6rGP9Ehnf50OdkZs+v5ezmx6/M1SDj5eVb8NA+wnr1d
	 23Y4Uc3ohm6iKUsReA7Vs3gLUYy+G4UKHpwU7o/1Yem1fOud7AcgHWfGkhsTS5AlrW
	 R+Qjgxxy+xyRKAx4NRehsNo3ECiYGDKbJVNTYE4fKVooIeiGOOvsBTGn6CvrrgF4zk
	 15ucdCSvZX7orrl31BbeavbGNiq0OG/OGqgIBVvYx6AteO/GNh45jpp7KtFTT016Pr
	 ZIwvCbrqd4ERA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54325C6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166391165333.771.17364685389485941174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d63577150040cdcc2d9c6f4cf8e4f6c30e4fe1b020e067c334332e33f1c81887
Date: Fri, 23 Sep 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663911653
