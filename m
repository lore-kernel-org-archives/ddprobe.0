Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5BD182
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B214C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661661052;
	bh=dxLVXQ9tMdubxmsCspqlbIrFLPriaRIwtTukIjpyhWs=;
	h=To:Subject:From:Date:From;
	b=MrLlotgTU6HL9sq9SajYX1PIzFv1PDd3H9TTJUHZtjYhoUksq4WeeKyrDHWRYGOcR
	 lLO4YeFG0zLC//u77uJpfyPCjeDsoNoB5BaGpm6BKEM9BiCx/g15pQ2giO7Xry2XwU
	 7GDL1y/uksaGAKedyd8kTlAi2DqhP/cEPR1nyocwuF9kkRtC0RsJyXj5eL5e+C4ifP
	 uyaLoduNMzfUK4FCfl9qDGM29ilf738M4zJxqTVrvKQZ/YYbJfwno7fX/079UFCfyj
	 XBJ3ruXQkymHahqchfeOiD9VUajCdLtP3BmLLNZ1uNZ9R9nPBIT+4k88DAB/o+40nw
	 XXAECiJC80l2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B50ECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 04:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166166105231.12639.15771871672070948013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d783347804979189784867333540eca186c18e26e0e0fb3c3ff79103c209a07
Date: Sun, 28 Aug 2022 04:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661661052
