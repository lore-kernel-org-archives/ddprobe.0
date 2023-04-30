Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C71917D7
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 08:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04EABC433D2
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 08:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682841966;
	bh=DUptySUSdGrR5wmVMtoy6dAYPjcWEiQm42aB60Yy0X0=;
	h=To:Subject:From:Date:From;
	b=NFoBPFLubZe0QIXqOkO6poHf2SWaeGrRm9V0p/abDRO23cDw96gdZXTsMQDTrpw8c
	 t7QIK+5JlSwDINutnhVtyUh85ick5YESLJEp3+1E/h7KG2ZRRNGpJy0DWGkGqtnltw
	 BPzmb4Ut400QP3Peqy2sx7ZR6sqF/eBiTd/p1ZVYicN9ApNayBHhPeX5605CFiWJRz
	 TEzuLZ1nU4PVcsqbxL+nfHRyc+lgD/6Yp2GB34ojr+VgYHNg0gxB/dgSH0uG66+QJp
	 NJVVU2nWQ43NRDPzOelaeBs7B0z2xeBIKQzBsGPUkZQYt4N+XWtyPCwEnZCI2DhdRH
	 7RAIvMenz1QLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD849C77B73
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 08:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168284196586.30397.13723456802208123638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d811f46a43f517e5061108f1030328c6983cd2641dee4c408fa02fe3db322df4
Date: Sun, 30 Apr 2023 08:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682841965
