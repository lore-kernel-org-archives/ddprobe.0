Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E857F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A1B6C433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662878453;
	bh=CqB+YStUj9pGx/8H1yiVy12/R6pkAXdeg+I8E1cmqAI=;
	h=To:Subject:From:Date:From;
	b=NbdQ56z5ajtG9illvly1Gmuurc9YZB60B2aUG87neVqjWQFuAgvkdqaoyAlO54H5r
	 3dADG8e1KP7ZnJlcJi09yzrTltW+yxVcrfH3DavbBImYGcOum/l2MVBhHhDLtsvSyq
	 k5XtsRjb/LgcMB5EoJSqdmyci8uQwlrxregBxiOHT927DvhxbV11J9sEcgU3Cs94jD
	 EbhOJDrB3oGJHgaiKTAbzttTekLYvVKWBrl2ZDs8/e1Nr8RBfoeKBtDF4c9ydn8x9z
	 Hff4ON59iu9CQh2Nmb0HyEzybF2sUPCyzOL4u5QwcKuynuZ8y7C/ftftGmF6SjGY4B
	 sgFZEKEyMFRSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68077ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166287845338.12639.1923144910491422385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f7ba86fb6547b464e594e87a3ca159db91305ee4592aa755dd7927b8e240c2
Date: Sun, 11 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662878453
