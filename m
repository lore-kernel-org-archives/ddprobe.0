Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D107F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 732D4C433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667742654;
	bh=qxeo9pWHO6J5cB8hdlpHRENLMbV84Nj4SAUQ63QBsKg=;
	h=To:Subject:From:Date:From;
	b=uqUeWRYPN5v1Ix+6BB8wESsVG1uo1sa9USQOEX6ANhJxVZj1rKLQcGcleJgU5nPSG
	 WDQxsObClHX5gNA49ArF1YUepzmcI35p9q8SHsGYxz27jRLu/k3mTue04b3Rb26hKU
	 tg2izlRDehpCF7VWLwCXTFXA2Ibt/5xOg03WbDbKQOtOBmwTLAu89DYcZPMKNbf4Vy
	 LPTTqwlBkPD2oPgdfd8M4JNDRMgaTDx6m02UDLh1AAsS7EfPRUYWrL4+z57b7Rdl8F
	 aBZY4Z7EmFPHHAUOuPkXLi8SLkWQZIWUsf+EMQbHyxNPwxtCNvJ0Dkg2UOMz+mi3/K
	 Vk6MInSLx9pbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5784DC433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166774265434.10122.2674875009207647716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ded9b8ad302649a014216e78a6c520440e40b81af5f0b2dc139fd2fa90c9ab
Date: Sun, 06 Nov 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667742654
