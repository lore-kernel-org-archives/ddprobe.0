Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284A633F6
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 10:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DC0C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 10:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679653865;
	bh=Sv8FKWfoyOxhEIyyVL2OinPOE3ryXPu5p2NFcAy2S48=;
	h=To:Subject:From:Date:From;
	b=cO0Wmx1ISjQTMx9maELANsdI1LZosKuVd+hXyGSOOzID2NnxvRnVKOCym0YEiDakY
	 kuSGKXeexeQqLqKghdk5W+iwXbuF0cUlG0XNZBzN7ghKBivMVqnbzfkvzO9SS367KK
	 mpyYdzqavj2uxQG48sg0kne/fHjDYDLtLOWWZ7PjDQ+iXN6I/BcoogeEy0czoBWObc
	 tMDo/IAua/ObUGJ65D8hudSgxSmtYBl2BlRsRBB/R17TyrGswRwD9sq/XP9vkGKINj
	 vlkAj5wjCXHBB9fn/EH8cUektl6/WH1cdjt5EEDxY1yHYI51B9nFdjZgCW7ywYGlK9
	 Xw2Qy/2dswaVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7072C6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 10:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167965386574.10856.16649516252903475705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8bedfb956d1439dec3219205393c2359c677ead501519268aba11fe371f2126
Date: Fri, 24 Mar 2023 10:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679653865
