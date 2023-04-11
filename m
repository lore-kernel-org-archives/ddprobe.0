Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300C017DB
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 22:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF279C433EF
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 22:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681252325;
	bh=SRR+qGRErTDjl6liY0ISfsnWKS1+aslOANGYXrPMNGQ=;
	h=To:Subject:From:Date:From;
	b=Wv6qwohDs0VTq12ZMZvZ/Lhk7bZi1+w/KVLuk5XBdaDkqM/JOwVMsOpyvK0AZAPi9
	 VSGp3lGVNUeffBKADpM1UKKnj1bjOInzJX5jNYgA3galUJSK1s4o6PZ+vhQ0+GnBSn
	 kXQ4DJHaYm43CfGBEcdMuhuNXLPUuRyxeAj0L/3Hs2PgSrJVgxBY7RQaKt0PoCMo4g
	 ZeO44RSIc0pCzRi31ZxgmGNZSeaM/QJA8XMi/1nNFyoDmSdBmSlnGntaRD+d2WXtfN
	 tkmbez+XzwDSCzQvUotIfScixOMVoxBHSHH/ljN6eTUX4LD3HJHUhLw8ln14Z0321n
	 r422OeWBmt8zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8F1C76196
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 22:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168125232576.29372.11169168340637313134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dc9faf2673bcec6e8c7e1165868af5aad9d556dcf7ffe624f4bf69974f98d7c
Date: Tue, 11 Apr 2023 22:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681252325
