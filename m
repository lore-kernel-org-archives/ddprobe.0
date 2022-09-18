Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40917C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7130EC433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663518653;
	bh=v+DJ9svxcoepR5T8oP4gLpESJYXTcTspu5Xa5ei47go=;
	h=To:Subject:From:Date:From;
	b=KUn805Cy/IESb9fXvBIlH74m8be+Aexf8y0xhQhNSx76SxRnMpY+mvJ2qos4MoklQ
	 pAW845qSk5n2l1+PGHYWmDb/eLU9642S2r7TDXGl8aNlqdb6kEAfuxTt/dgvYPvPxS
	 swuFHbHhSRJ8gLGBa+JDDqaz6x6RHmPMZLLVFmYi2zM1A53wVgLIVG6YaQpBDwhpaH
	 tfWMhGJarIsHxg6/4XsS0BKFuFXY3rI8HMXVfC9Vx+gyLNs7b5zLHZ+pKZDVLjg5ux
	 Q73TgUt5JrMlmmCok0YGdOT1yOScSWLpcQSovu9V49jCxgKqkwg5OO1iOHBMKb2uiG
	 qgjBqAonDRy8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F33C32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166351865334.13925.16403264944007668788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9074dcf28c7a94ae4c5108bd25578c9818818dc2f86fa05c811c6a6c2981e78
Date: Sun, 18 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663518653
