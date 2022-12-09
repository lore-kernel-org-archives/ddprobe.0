Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF39E7E8
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78ABAC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670554287;
	bh=ilblLWMJ8BWCNCmDP8NQXJlNPuKhjXiL6nbLmzzSY2s=;
	h=To:Subject:From:Date:From;
	b=EUJyC3UYZlYDWGeXytL6T1w+Sp09mJg1D47qf4neAC4h8oTTLxfSmcmu8Nv7gQyPS
	 vrrH63SUBOzfu9iIFOhQf0t2vKS4IS2aZOWfF9YRXG3mNrTd4KFmKwdqoEINvVGBkN
	 Yj2aJNVyb2v9ImRVrQbIcf/Fu4MZ5spX9MMMXxO2AvyA11EZvOLFDFP1f/Xd4/79sB
	 m79X/7pdNM1Q1FJxo0waziiwjSidF4PFDonUBUNSG2ZEYdBdoAoUyTSh+xNx2pYVYd
	 4RlwiMdlKOwWFXZySxXwl/dGii9lQVyCr+9zgN9FljfOfUqQ8ujAbJ2sVzvPl4iccw
	 VGDLtGbmXbjTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EAEAC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167055428738.4283.5532645448740124896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7c1bc428457c4dd744a5f8db8ce207258df32bb02dde6792beefcc6e7a1a68
Date: Fri, 09 Dec 2022 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670554287
