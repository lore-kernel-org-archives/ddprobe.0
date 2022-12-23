Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88C2AD44
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AFBDC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671839487;
	bh=ux0nRCl0h4RX7gmMktQVnvrU9afKeCxic/lgH84AEK4=;
	h=To:Subject:From:Date:From;
	b=MeOtvN4Ocw2udlMligjub6EuRCwbVrc9eLjbzCFxOflg8FoPtpcg7OqbCgoU15ABq
	 sa0zdC4rTCMhDyiQWrf7imJGfYiEpx5ypXMZmbuN1aC068BxxqhOqqWZTZ428ThbsO
	 m7DLbiYXCjAyBGuagFOzWglyNn+7IRUABXa9n0egdHgRxBK55ZeSarW2FQR6V6+iDS
	 AsVZzu5D62q2vnuOxR6AJcOvqHOP6oDsH4TLmWKf5E7i3lFPU7hKgFxnKfBF3icKxi
	 SYH1qcSYjjalhjy++DM6w5oeLqjgxmnR51gk/4r8g64tgMjhlBGoHQiLJoCiGLsJui
	 Te5/jAkiDm5Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE12C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167183948737.8503.596260855563308210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4898d47be137577405bd9f5d433ed8954d97cf28477f0180dc0400fe399293
Date: Fri, 23 Dec 2022 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671839487
