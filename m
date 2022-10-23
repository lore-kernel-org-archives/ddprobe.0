Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C270720F7
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7093FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666542053;
	bh=6Fy1+sY4IIw3yeEv+inxJ3l+uCgOcG3gv64GHAySpZ8=;
	h=To:Subject:From:Date:From;
	b=YNMYV1o17zThrQPQF2hx8CLc6eqFr4CuZbV7vhf/M8b9PL6+6P+PBrnlGTKV8NpMi
	 rS510h2lHoHBmX5ypuza+pG+GSEMUUy2T3vtpFoDx5rafTH7HgenDdCvytMrsiw7Q+
	 p1cgx2efpkKCUJRqClUfGoel1FMCNi+5WFzZP1UDkJb579OcJHYDq5IvEYk4vPexGL
	 SZ+GM+yGehouNG4l1anF5YDXdR8Rp9cJcmxOtAnJ2/wEqzIAR3l4qGo/OLdpOFGo2+
	 +T3J1JMg/BD96VDF62iNAovu9QMg7DvfO9LHMIUU0Vd5f6xl+jODP+hrNXv3uhcTQQ
	 RzpNToZ/Yts5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 551DDECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166654205333.8961.3093108476960813280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924a599d5a7c9f22da2ef30a9fdb164bbde9dba4da87371d7bbb36bcab4b4f4c
Date: Sun, 23 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666542053
