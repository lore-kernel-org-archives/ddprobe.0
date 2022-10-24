Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2AB620
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68CA6C433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666576853;
	bh=RUX6/Uk90r7muPbEZ1YuQIdpbcqQ21cYvPaIpg9oiLI=;
	h=To:Subject:From:Date:From;
	b=gUXqdwuzIlw+sVAV3/IUn6yhjtwoxEZTRN0Fl41QoS0R54Gz+rG6i4HB1YXWGkydA
	 +bn9+MkI7vRThe91tDbCT0x9N6DQrbXi2nT7zYx+lakKxwquahuklxX+nFyYyx1BYR
	 XYHSG6L5Wvz9fCVNQ4qCXA6kx1I0xjMhAtcAHSCc6SpycLOqthem8jhblrPcPsG9Tn
	 N18lIqHMVGcUcGUQdUGs8SfuoeKZvBV2qlL4m2Wo75Pmv8suomfzO2yq51Q+um7hDJ
	 uCQIVrAV6BOdGHnxchmv2MkZsY3BMBuv7YObduLfNjnt8mhTfbMn1EctVeBy+28IJw
	 pr785YngcQRDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E2EEC433FE
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166657685331.14386.17900196855868971540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd7f201be1934ebb13bbead69307806d2b8d30d9761a50161b9cfb182adfa00
Date: Mon, 24 Oct 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666576853
