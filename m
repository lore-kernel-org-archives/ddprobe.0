Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6532F2B
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D163C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668185454;
	bh=LU8dOFgEB6omXtJVtcI0gPvTOcrOkg9J0fwuIgwGe0U=;
	h=To:Subject:From:Date:From;
	b=G3feCMYWNDIPLYUY8kGPyMtAFeMJyiX8EKWMNVUVySE+aBWBX+D2vrX6+ghPp0evc
	 eid6LEsmE3+G6qXZ67BSUy3SbexweldZ4m3RNBphJQSXLAdcyfPpxMooUxKSSrKopv
	 PmWfg/ydcilGz8ktlAicDKTkv3h223IfqNbcUmwboGi7DSLJIkJMpBrfXVj503nSN/
	 15fjlOuzDR29jksjaG96ZT7dRIOfVgaD7+4blVr0KU/sKS7pNEm+MotKHKMEgEPFuE
	 9xXSm+zx0xvCwJv+agkNJk1j4Dvjn4PE0YTpFAXnVZtHtuS5P4V/vFHwWvJYTkNKoZ
	 beYgHfg0fiB+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E1FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166818545439.3998.9581773090967387324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6baba104f1c8bfd5fc9fc1f75fd5779ddddf147dd463bbed09934e3088f98e7a
Date: Fri, 11 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668185454
