Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F91113AEF
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 21:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9ED7C433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 21:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688591228;
	bh=f2FQv+gOm9Y8Y6Jj3sAuqDXfEn6vudk/8QX56B4NPFM=;
	h=To:Subject:From:Date:From;
	b=gyymOkMk8LToydtH5IK7NO48h8gwQMiDwc+KXVbpb8o5rwN13VPZRjoAPB5inkiGG
	 dBAl3qVhJyBDynAHdQl4iVaLexf+TXQOLvuXXl1I6Wwi5EbW2ePOAs15x6o7MABh5S
	 vauNxC8YiOKzv3mPe2EXmTn2zYogJzVLuBvYlKW4mKaNzW3DPhOq2QYLgUg7YJB4Jg
	 vsm0jbaOsOUmqRsimoTemeFh8lrDctbJbaKCSc5RXTINUO2T7oYr3BpUg66DT9f29R
	 gakgC/OesJu+AIRs7tinPR01molmEfOmdM82M3hDTai4tHOTJusWsN9IJPfx+HxWky
	 bzTsyXUchvG4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DC7EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 21:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168859122868.23787.11558838160301730012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574ab3b86de617fa93f88222e2e1dcbd4e511b1bec91f833b1e7e70e47a6b0d5
Date: Wed, 05 Jul 2023 21:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688591228
