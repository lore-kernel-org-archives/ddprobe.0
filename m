Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439EB10A3D
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 11:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB459C433C9
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 11:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695641108;
	bh=zdZNaKfc6euhhIXbgg6CtgkUSJrM2oPXVwRk3sAEXIc=;
	h=To:Subject:From:Date:From;
	b=hK7jZXKGOduk0VhHRKb5GxihjSWed++OPyVoeDnfWmcYzUCr4nRzYATVgDwAqtO1V
	 TFaojGcmWuHyAEVr2CkCWTEZ3soXu5HCNdX/lOY/bBoVjSxpuh5TLVK3OMgTe7bcyu
	 dgz475Opl1zzKXkdqyzIh7q9VsBBpHxQCYT30JLFJTiEAa9ecEEhoq2ziPE1hQXwcF
	 r6KsIJLA4SWLvpUNKIRXpmdsyPV44XE8Ofebl/ezjPl4QPK7QKxq9zfd9E6MOJPBps
	 kCTCuX7OSjLH2Omhy2QBLuyk98pBy4t52SrryVn3ZoUdtWb0NUNo3YzqSGu1aea+7w
	 4g1xPGAOr1+5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B022CCE7A81
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 11:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169564110871.26971.12903284891339985521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbcd3fcf333ab43ca10fd6426ca7c94f453354bf432303b2d51cc2e7dbbae3bb
Date: Mon, 25 Sep 2023 11:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695641108
