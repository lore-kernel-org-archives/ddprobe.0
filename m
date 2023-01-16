Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44B81C07
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82827C433F0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673870487;
	bh=e11v2gFqh6yGmlhnyXCxog8X9zhJvA1qTrv4vb6XkOk=;
	h=To:Subject:From:Date:From;
	b=owvUTXut5IAVsVULLtswXEaatSCWagrIT7GcHAUdoFJUSOMb/GI8z1f0Rc1UtM7oD
	 0gh/w9JBbq1y+ZgzLf0prebUCab4XDt44smMqDNdtSKDYoY2CDEvGR7A2lSSBo6EvT
	 7XA4PRL3x0gbo1l5o5Lo1FuJxxMtDTlq36FuHs7u+SCgZtYuAx25WjPExM/KMwApky
	 qIWhdPIyYPAuaWUDeCXeIqWfdu3f73MuzK5k55ndteQncx5pIygLWlUMrQkKEV0wEU
	 /9kKkCvPV6UKpYExRM4WHneyF+pMOp3Pkc95MU1pm3deYQFZGhfzgNFfTJmrHtF1GA
	 Xo5vnmNTwGZVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644A1C54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167387048740.27862.8963226312232232643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d309126abef5acee0bf8e8a1f7fe53fda984843e335f1feb710b62bce6957ed4
Date: Mon, 16 Jan 2023 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673870487
