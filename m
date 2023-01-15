Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32D8EC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F43DC433F0
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673769087;
	bh=vOvWZ/8uit23xVKQTw6SqMaGLGzCiRZws5lDJK2Y49I=;
	h=To:Subject:From:Date:From;
	b=Maygh/qxNCugg0PGqGAhDaxganUmIaiKVNPl+y8Mw2xBTeY+cVW7ja8xAr47zR9Xx
	 KuVQeF2d5/9lUcrRUPfmiN9AIKMjNHQZbPjNxSz59uwlyKebwap0wLpD7VwyDMomiW
	 H1vlv8ecLOJcGqVsakBRN6WgbmTXbIAXd5epznY4RQ4KWwTDhnW6Gav3QWhLREfeu/
	 OU10BzdsSEyKslyT3xXjqNQXvKAJ+SW9B90I0Nn9r5Z31oo7Z+E1qm9+xwKprGuR+H
	 1a4Ii1LKxy6QOjp9GpgicsVzuf9Uec1vRRIwZyAHUpyYHvsM4ALyyRb4eZO9TsIZiM
	 Y/58AF+l0bHqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6488AC677F1
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167376908739.14055.10900422180911764829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df938ccd3b2328f8978df2739da1330114678dabfbc4a1b06f512edad17d8fe
Date: Sun, 15 Jan 2023 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673769087
