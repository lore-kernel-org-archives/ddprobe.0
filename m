Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC074622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7926DC433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662695453;
	bh=GljhAql/zMi+9ON36v4nJVZDiZ4nMjcdM7Gne8l5op4=;
	h=To:Subject:From:Date:From;
	b=gcl7jOxzAseDHMtcBl8mm6hZ8EY5eq13KoZEW40EskHW2kP+8gAL9um8gpdQGukk4
	 KsjIY0XJzfA7xs9d4V8vjO1MTBxwyrVPO+wdxNJTBMLDXSzIEX0cUmU+oyNP2QYg+8
	 ASPW9pEncKqgLUQY3SyxEPUhYhwCTtv2x4Wx1mx34/aYcgvm/zaDXSgEbmWVVOn/Gv
	 it55gi1oLzkK9ztrHoLcOsyuuoLGuV0ZIBCgzmSSheSzm0YuPMjUnznJw9RZZvm7Ab
	 u0L4ILKULT384dF1IZs8BGKQkIeWr1FKrZW/LBvgj0M4ceaLziZb74fizK8hzIh0Qr
	 E4YRd1nthhlig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5866DECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166269545335.22239.12853311392892786755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4ec6f2d29602b323f4f415bbf6ee17d36d6dcc13b6da1ee9b51d868f7ff5ff
Date: Fri, 09 Sep 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662695453
