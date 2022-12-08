Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6CE22102
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C313C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670503854;
	bh=KGmicm8Uiqkskig2Pxc/yM7EVPIdnDHzQ9Utg9Ae9HE=;
	h=To:Subject:From:Date:From;
	b=eGKd8g72ylXC2bFLLgJNCW7A62sa3VYDtm2ZoEtwB3Tnpb6e0uW2EGZhg+/WCHFA1
	 eMg2u3ozxtIaR1JgA2xJFKqVS2etGvr1WiOQXYUOEAdbEwJyX10pcSvQkvlz7+l6BG
	 dssL8ZlxUEG0iQ30T8lPd28/Ylxd5oYeWoDlZ+MgwL7FlOxUG9b+UOnmTgaO9MVUEY
	 71us194E5O9AopNFNAWVDFt1evVpRBa6iWOdFo/BLqweA0CT9Kuxyw+La0jQHMqtrp
	 J3AAP0y7SIgNOF+peCkvM0HPgLml11UT7bitgwA5DdFlZtW5Xc1DUWSWSIyb6cS9xY
	 cpt46Z9z+9koQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50886C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167050385432.17127.486075844382004323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e31f3990d049c10a7f39f07ec0e17d55a7fb07fae30b243ef3259b3aad9115
Date: Thu, 08 Dec 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670503854
