Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C239517C9
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70251C433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664137853;
	bh=UjBHEKuBt/LIFWy6y+N09bMaTCIZXlgGG4K+KgORLhI=;
	h=To:Subject:From:Date:From;
	b=Ywp3UOe63Sy5xjou2Eb5gN41/vKJ37ebeCIsHp13NAhmVVFTEW7d9wHN5Q+ZADDs/
	 N4KLa2tRT8M3dDLKcGS4JanV1iJ/d0s+uv9XbMeaDxkPs/oP2bLulTsDHsj7eNZzzx
	 8ey49SvkDVFMCXSyTMlGrc5KLK1qLLzZaBdWpEyzhHZnseJ3my+MhycYkFNVM03ptW
	 jzuyxRUPGLInZBaBWpXCtcrlS72oewRpXa95WD1dX2LNZN44argSWQsy1v5rs+PV6/
	 iDdg8gSH1V2erwAv508ZxwGP2j1LFxLPHD1Pv3gjTO5oFfOQG4L5Q33VpopGiJRoqp
	 HwsTSHMKNI2nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5056FC54EE9
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166413785332.5455.13204015013882524099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a8202cd97b5214552ab816d26cc98d98c533c2445d15057d33e636176b2973
Date: Sun, 25 Sep 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664137853
