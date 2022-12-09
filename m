Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57AB7E7
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B229C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670589087;
	bh=P+m/teA6l8f+sFhhFeUcg9EaqNK/QV++pLmQ5e3N0uU=;
	h=To:Subject:From:Date:From;
	b=nECuh6kRFX9+9BCOZ+n9uhYSmRtWcNsie0A/qjyJyBgx4Z9aD6H26HjKwb80wmC/Q
	 ySOMwEC0x5+aOXAh+mByde3pb21Su0O2TObeDUZ5foBisYFIepNrgy/nEnmfDKIpP1
	 hWGjwtULTkkIkUpDO+60uUeNZ4UzWBqpetUmLI+DJdRHHzrIaGbN0/SuatvMdcXfdP
	 S3YKM9fQP/YM9k+mOn95iUYkAsl8UZJ5IeBt/tD1tyKw0Qo2IS65JKAWbX0tYBUEWE
	 1DmSeX9Lx/tZUGJucIttFXSAxE60tTy2cSGaKUzAin3CHACfyEW8h3cMc+U8PJ+tiK
	 WSgAZENlRLZBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A2FC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167058908738.26139.16485308991174288598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d3f21be5b79e22af32f0b6ea5bb214a2951ee3c9a01fdf7ef6282a00ea947b
Date: Fri, 09 Dec 2022 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670589087
