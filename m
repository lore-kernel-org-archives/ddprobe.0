Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C15443C3F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C080C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670176854;
	bh=Y07c/nGNjJx4JVnQPAxIR/jDlfmfdsvbDwI53iltV/8=;
	h=To:Subject:From:Date:From;
	b=BscXX2jhtGbYQ/k+/P6fYLGe2x2ZcWgGf7lFhrIvCyiFvSuSV82WILNlDr887M4iz
	 c/f2C4zX7ZzxqlBYw5nPvluLskEGRK2Encdu1UGpSaBlYpreqOR1WnCSi2Gc7z6i+o
	 8d1Tjuj1lgBt2/EXqVoSMUAxrzgYqRU/0u3u3+OzVKRRfNHkoCTAy11/PVpq+dbDRR
	 R3kHsOPHW451mgZpI+zXTd88JCqp2iJ0uicmEscY9h1Do1U8qxAK5PKFX5TvSbQQeU
	 sJjcmJzgM+pVLPoQDyQtaQ6vf46vB3OWwMdPRH0Es4iv9DwResevnNCYeLe+P033cQ
	 wxkHZJE7JAxRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C29C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167017685433.5054.1784158462431394058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0401dbc11b3010e571fdea42bba9e419dc6491af759cba4e2e3aecfe68b3ca82
Date: Sun, 04 Dec 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670176854
