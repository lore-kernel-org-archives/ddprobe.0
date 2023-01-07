Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35468EA2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 10:51:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4E1C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673088687;
	bh=31Jg+ADGzoVCzuXgJcY/OD3dwZ4rG0UJPe72dFHvF2o=;
	h=To:Subject:From:Date:From;
	b=iWcubFAmvr7XjTbeYlIMxmVLOBuEgm/rGdwPEdFPFSbBXFLC8YBpFVJNOJwp4SGjM
	 j/noamFGkwJT4OUCw293J8C4A4id01T9lpgjiae4G7h9HYVTKGzxc3AWdfJWNOk4rt
	 BE3QGYHqc6eErMf8x2fNb3OAmsGNunFVxR3I5Wlhl4Y/eNrSdmCgU41NnIdKydGv4d
	 OiynZFuvvHL9XXY7LDooB438yUS/Z7I6adXK3CmApO0PRbcGCLAf+YTWUW6JS6kWYh
	 42/WAIJzQUdTkOoHTH+bu28UMiQiYOul7gbFDVZ7cpOXwP2qIw07rEp3T1lNFnw2MV
	 kqQpPCsRiwz0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB6C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167308868753.10583.17437498408873051402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f398363bab386cd13450997f206e8292f063d5f104ef7a7004c484be0f7bdac
Date: Sat, 07 Jan 2023 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673088687
