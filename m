Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC271C3E
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 08:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9C1BC433D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 08:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681030265;
	bh=ApiDV4n/y+Nxb4VihaxBui7/91izCFe1Yqha5us77uA=;
	h=To:Subject:From:Date:From;
	b=BimxtEnci3Pt65rsnyIlbh3TgpNMgLc3lkF4wrth3W3/ENpi40ZeorrEJXWrocsNf
	 sQUxgw322Lql3uw4BmEQhEmbVNYYWJTU5nM8nVZdm9c9VVRpmkWIcBPPhwyUcTlOqW
	 Xis1WOMVV47ZIMv+Td+6nQvtez3oX5u2htoxtALMeg++OxEOj6xhI3poz7pMA9MIkE
	 WTbdUoo3s4guKNdopCghgQUX6RfuNVMxM+OrA99jSR/vJbALbj9DXOgf9E65vk9ReB
	 8KtPoYKuxurRUtk0OWfa6TTRVYj5qJH0MNEqCQ5ij+9I43UzLV1EegudLJElA8Vp+r
	 uZxDb3L5GT4gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C87B0C77B61
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 08:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168103026580.11445.571799454488411197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5303120fc30b725c190a2c773960ea48881bc0d2539c0ff574fda125c1da2056
Date: Sun, 09 Apr 2023 08:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681030265
