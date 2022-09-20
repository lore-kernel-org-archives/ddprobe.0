Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE4310F9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72FACC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659053;
	bh=8VCxrVsOZHlDnyQDaub2W0U91tO3InmcMp42Zz75cfs=;
	h=To:Subject:From:Date:From;
	b=rgA5NuVvh/3Q9xRTgKce5XqOzM7oCHvm8SVAlzIwPG4/70BruGzYxij12x9J/iHfK
	 xzqmasMKH9ruXwaGLqp0oZJi6bsV6PdiHl6OZDVRoIF5LmM8QJtV6/JGU7sE2dxsOI
	 q6FfNPa2V6TqxE6VPBnM9U1qWLG2ycFXUZGNj9OLbk4KiTdt1MjJZBYHuilFyMaFXQ
	 /bUXyLvf0z9vgOQZrNMiclf75PIz9cDPzk3727Fe57zozKhDZuXH4JnpOfzdTprHx8
	 6PLAXVATFW7DOvW7X7mVAB2ggSy286nUv+vnqOqa9//cWxGIBiyhWpurUkRHzSiess
	 DqP+HOSoHW4Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56FFCECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166365905331.16653.5251417277764351466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e86fdfbfe80152b7d5598cdbbbb4cd4520bac1c11c14a4ed93289896a96869
Date: Tue, 20 Sep 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663659053
