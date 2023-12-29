Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EA51119E
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYE1dh1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80131C433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703854096;
	bh=hIa7uvfkZZ1j+BLzyzjPuKnfGg3ZAZLXY/LGuMgEPu4=;
	h=To:Subject:From:Date:From;
	b=ZYE1dh1wC+zCimrB9yFbh42e6lfSYEEw7OHlci+hVjUrTMZHzifPPg7x0AXayaIwC
	 w+63+T5gyAym3LKt59P8bziAAUSvyolCEisdDhf42v0A0SCWvzxU7hQNHMj46KkLlP
	 IQNAa91KKvP7UEWdune2Z/43N1Fw7aD4HWdfrRDKfidiOgjBr05ll2M3BxEhNUbJmj
	 KrJusnTtT4hZEpFCrBJ3RQ9n/SlPQgCwHPBLGkVbxga4LQIJr+/HHDRteBCoQrvbtM
	 NJK3fwFWrQcZD/gH68NRN2bVcbneoUeupIOa/ChSFsDnC3cEwYuWwQb1HTpbO2ZGFG
	 SeQZkm75I0Zdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65004C46CD4
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170385409639.7608.18330036846527028423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144c821229a6a9e68ddc6f269b62a22193d5bff9f8b53449b34004d5e054cceb
Date: Fri, 29 Dec 2023 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703854096
