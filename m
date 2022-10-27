Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81947B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 00:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 677B6C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666830054;
	bh=+Vd0zt+z293nFPVMn3qSf1QPkdGX51EQkGc6hSFpz2c=;
	h=To:Subject:From:Date:From;
	b=O/NEvAqtFM1uA6bqh0wCdEpqUHR3uRy2FeSPb7gMualuAqbTjNRvJm6uQPfjY6Z0I
	 QEWpUKVMQrCvMWgi9yPYZeM9nhgmKA7ql98+/5sB/f5IBV/TSoDUM7JSoy1lTcmGla
	 TJwr88Hh8RRBibBEOkJ944WzK5Icx2/SHxLoYm7mQyNJyZ+Sr2Qebm0oYGl7GPFt67
	 PpEU3KLwlukAK7NMdxKu1mzDa+AR2oPb57eD8j3lbAlNe3HLYWkiEEvN/2YYUirLK7
	 GjxlSR9XDu6iAvlIPiv/S2KUxS4CD5PUcdOdpNirg8PRe2sCskPV3mZUkRsyh+v2YE
	 Xdmu96ui/Bi1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D6DC433FE
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 00:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166683005434.31219.11197086869493767696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27912a1d9b780de032651462b422aaf93be963731de9662bc03a6a89538e56f3
Date: Thu, 27 Oct 2022 00:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666830054
