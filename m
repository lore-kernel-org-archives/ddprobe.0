Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF37E15A3
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83975C433F0
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671760287;
	bh=4y68b6bAMrWo46KgiStmueWVPIVm/7xVJnXh2iziJi8=;
	h=To:Subject:From:Date:From;
	b=dtQLSOwBuM/0gPRsthxlbsWZ/9jTc+9I6kase9AB92hscCVnTUNdLKlxSYzpLzJuf
	 5ynWePnfS/O/WMpiU9nWFYBzwE/Oe6yEcG3kfRyIY2NvyATPK6AlLbegPC2GI5lXfT
	 MLnmFwFK/P847fEVambmccAtJUzOPky4j0uAIQPk4naur3vl4ppQ4T9BQe6zNMTiJb
	 bfjH0XM5k0BpKl8MHGmNVugIHisz+VYulZKERkKkjHI0yD934ChdMpt12RJ093wMl0
	 4EeKKHnGZeGnkNIXrFhrpc/H3QwIJ/wPEPHK8h788UQg09QzPzonrlUbSfbWTmioJ1
	 8TOyuv6GNQ1lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62093C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167176028739.16751.9920431852554019286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e49a40839b226a5cb8789b2f492d98efc2e737a60e3f3e8eb47e2bf5f0bc8b
Date: Fri, 23 Dec 2022 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671760287
