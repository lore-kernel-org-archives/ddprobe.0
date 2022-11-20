Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC451370
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73074C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668918654;
	bh=XyNYSZy3KWee1gmIndOecbWTpuJHH/X7d6AADgOUlmE=;
	h=To:Subject:From:Date:From;
	b=Gw7Yosk+Vy8CMwC8+ZhPe86ws96syYZRdvac2MkOdy/Gtv0/p+sxtC91vSb7vXjQ9
	 Jd704cfJiFtsYfPgghAdC+w+/i+yzoAtP5zo3KTq5Kjmq5GoP0/9AX/vygSiAENtDO
	 VvgyyrmgxCBlVgKjZ4rUCNcS4rba54DEkVPV1ZsdiG5KGjNS+l0gwNl1GHQuZ69czt
	 KVpdYT5m8Ck3l5TDfoCT707eMPBjPsNdvHoXIi1c7seiasxwSneQ0x7EzFqkiUDrcp
	 JGHKVsK6PDUeIguHonHT4sZVxMNHFudsPgM0t00/FRu96tHO7/R2a1w8IBmFSEa1f3
	 X6pVtiUMvuLBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541B9C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166891865433.22246.11339275607443356793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7287e21a0ef0424ade50d6bfadbff638def24bba8622ead6af5edde16f9ee12a
Date: Sun, 20 Nov 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668918654
