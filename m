Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57987E
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A0AEC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670625087;
	bh=UM7gzMhfxPV14y8t2I9dBmAv0XUC9YjsjCNXv3Nd4CA=;
	h=To:Subject:From:Date:From;
	b=m09yb5H8Xl+D9zQf0x8wQZwGcmxdN37kyPhSu74Z15u7PKW9oJyy64TusLAC7aJDo
	 XQeBCZUzqQUwJnKJZlVdE6YHmtpTcbTOUkFv+mv78dibWLYYmYeua5EAvhnSV4dKIU
	 7orrSy2bRFg8lxvfMJK9WD+yRhWS/PcZI6L1/rUz141loj2vF8+v1Ov/pRPevU+z42
	 uTzvC4rpkeFjgbkyOIA27X5KCOyab/8sq6Q6Y409+iQLQLK3Ey6QPE99vsp6PzBi7f
	 OyTbx87s6ctjC+WieMAuqB96UdpYWaDBXDU1cKAMrOV//TSZM3dgEPAukPWxtUQS3L
	 gHNgUfhq+FQJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62253C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167062508739.29108.11139347830938092967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43696a3728cd897c86675ad72a8812a5c7455be6ce4373b6136f0aa4af7412e5
Date: Fri, 09 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670625087
