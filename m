Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670C5A937
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 23:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18B9AC4339C
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 23:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682636526;
	bh=+AT2Il2BcPBZAe5Pf+5NAyrKP6kHXhDfnllgV3ddAmc=;
	h=To:Subject:From:Date:From;
	b=JzoPpULvagb/F9K/zWidHE21TuLTl0WvL6pyNLUmScGY4CT+zR57X5SzHdJQCRmEm
	 SAtp+NbLpIW47F9JaOuxtGXprq+BzXrRJYuP40nTRCq8mlNBxeJ1RRlFd/u+5bCpcB
	 XZZhBqZ2J99bEbdcDxunZ0YbpL2A+1SejF8fba7i9ea53lnzyKfdQVwEalW90HJdEJ
	 0v4vC60fDEQcIFl1qSTLudtw1dO3ghmbsyLJxRXdyWS6ejPP5dLsQ+ol6O5UiRMlXX
	 bx1e2TmCQl+zraKEhtQKuP0k5CxiZeW2n1CLBMImKMerbti2MFhESp0H+py0rofQJQ
	 4EL16OP/8YvNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBC41C77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 23:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168263652595.17520.1464559192010302311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5e35dacb3624d1b8d7394ebf924a0f1f1a5a83435486774edefff1971acb55
Date: Thu, 27 Apr 2023 23:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682636525
