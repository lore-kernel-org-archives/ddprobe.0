Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A79314A1C
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BA5DC433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664548253;
	bh=eQTVrjXaIwr16p9qVlgt9M2Hvm90Fzgb4XFls/K4wII=;
	h=To:Subject:From:Date:From;
	b=lSAtmE56y7g5YcFuHNzSRI2CEDFuiDvYbCksK9LbmAVFJziwcdo7ox92QHgETRkGl
	 NZK2Zhy7HQMCebMJ3dj5mZvE3AlvFF3e2f4b2CMThi6hzqGEkGCVZn2PgHv9YkMcb1
	 13UaOtBojT5KPRRO8lUy2AtHnwwRhelpJX0z1z9xk8YJ94PCWqNXpvepdsBTKCpfVo
	 PtoKQF5A3cehnI/VDf2FpzR4/vv1J+Cg8ExQbI9LvP9JuYgqXbkDobZQntYSMNzrag
	 9efD5FkpA4bir5MfdccD020EavN16/ab55yizuxKpQ4leVdBdjmxgBnRVahhb0XH6q
	 Rh11WMa4pfVvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558D7C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166454825334.12079.6748857770783009609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96972108b21d4f326dde38071c6dec437f2c0d0326f6467df8fbadd74997a4ac
Date: Fri, 30 Sep 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664548253
