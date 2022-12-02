Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63AA7B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 00:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD9FC433D7
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669940454;
	bh=f2mBijc8+DFoVYSmzUkhbW9+X+NIokbc9eq5kX/QU/I=;
	h=To:Subject:From:Date:From;
	b=Oy5OvoJD45z8axFX0YmKGibtkGN82AlE+j3BWxMaBa5i8BbDiPneuoKIm2JJ1vaff
	 0QLkrCwqtQXr/LfBUT8Vr2rEHC7XPxScH6SFV3JEnwCeoEptzpXVgIPpEv3JhBq/0+
	 0cIh1jaIVqvlMTiZ+yf5VUqMU8L+D8AEZumUd77+wZ1SOEbPupppMCWepTVO54YEqJ
	 e7N6AM82ZzAnpUpP+YJmg7Rzrm4k1kPrfqmPlcKg5HswohyFRZOmJL+Go7fcGaHYBU
	 0KNq4FVpPrMFSy+rn1NFYp+QCtXn3wUM/ADVj6AHpr5zi/ppaTWU/w20bu3bWsrA9u
	 0xi9/1IT0Ytpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5240AC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 00:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166994045432.28666.15179223974249712666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204a57bf3df7a71281b7b281415a5b059b9c2b5d95739f3494fa3832a9044663
Date: Fri, 02 Dec 2022 00:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669940454
