Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636B410F5
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 07:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2647C433C8
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 07:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691479988;
	bh=9KQxbUeMMu1KaOj1uJ2JkrJTOxzRY5X0fP/yjgl8MKA=;
	h=To:Subject:From:Date:From;
	b=DgBIKeTmtwFYIyvHXnKH+YoSxv71GelWGW+DYsGub1l8eaVhxCz6Jm5RHmc1yXb/z
	 H4uDLDuuFZKEnFGHoR4d7c5YgvOuiXWIKEE/417ROcpSmHpnJ2fZeeOsXk/cTE/3PI
	 mxiAKekxZQuh51U9gRpkcPUH9HO4Ag3ytQi4/hRDF3WeIBdA7mkurdth9R1GXfCTfM
	 cCJmtuDC1X6GiCkJJdo2RP2reOmqweGj+EUNG7McznAESQ0QUqcC/FxojGNibrap/4
	 Uo/Oa2l3mff9sgiLBu9RI1D3H00/l+ZxkCKTvxrJ18buSGwXMHoKlclyjcWsjB1PGv
	 sF3NPoQVonTTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2A5C001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 07:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169147998870.3510.16671521192384609994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74d43a9ef0a4cc73cf93c0f047a44b309e4b4258c9f1b3d327d797e45d3ecfef
Date: Tue, 08 Aug 2023 07:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691479988
