Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5032F3C
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C190C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671022287;
	bh=62flQrJSk6+60PG7cx08IRazKh9UvLz8/cob+Y0bHF4=;
	h=To:Subject:From:Date:From;
	b=FTbSygt3RrVqTMwPeKErB2R5RmsVz7xcYJpWuLA1NhAEYt4uSjWYMaIIyNtrG+5uT
	 whudNwz285FkdjRvhiwMm406jbVfvSgCdrtsLupmCERQ+Jn24L3G6uyd0AJzFfsKIX
	 nz1BaBu2/iFcq7MlJnbS/j9ge38bh8YiybRyrZ2uqjK4C23n2IgLpZvQbqrJD0Hbn0
	 NE8EgHuT+29SWQ6MZb/ozeIyGzJPJDElPnTtVFemU17pCFjL1YuPuiBfQMmClWuEq3
	 qNsAk8l6azvxMvwI5x3z80t6tYdV7EgNbCqyAmG0wjLqriejB36p2nRdG9Qns02L6A
	 eBH73Qb9Id/TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62AC0C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167102228739.21972.15488805046745062057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d36414a3a49f55cb01316ad067dec764cea8dd7957fabae6f2d6e616f3e663
Date: Wed, 14 Dec 2022 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671022287
