Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9EC7A3D
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 707D5C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662009653;
	bh=lhGW08H4BI3TGGUY0c2nHFXvv/PWVT4jOs1peknhm4o=;
	h=To:Subject:From:Date:From;
	b=mLA9dq1T1CSwspMtqeH33Nwm9ZZXR5iJd2X60/TWXTPu9ceP8ziA23H1sjq+qdE1L
	 tlnP1BYt0DQTCxzJRKPCB0YISPU6BVxeL52CnTNiPJ5DXgdPcANbudgQf44ARn53Mo
	 2iH+pW+UGXAaNmqqdV2XGRWQgreTP+UcavPoVbakrUkIkQi6XOSWKp7gdxucOQxRNL
	 iihcA14X1uqrl5TDkvSwPYTmFoqgtose41CGDynnGXN4TV4t28E+8vS2AL1Es7tDda
	 pxphseFCd5P/H4+TqO18jEfS91oiEXBMYu+9NwTtuMclnsFOKybc8CU9BLiCQAOhXM
	 w4ODc4go3U4rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54DBEC54EE9
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166200965333.27170.7428804686589526152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c1e81a356fe5cb2ad163abc4afc90ca9d90217cce4487ab7f27b7d7a8b0241
Date: Thu, 01 Sep 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662009653
