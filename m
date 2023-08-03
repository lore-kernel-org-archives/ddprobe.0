Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1321ED55
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 17:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC19C433C7
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 17:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691082128;
	bh=YduCjm7zo0bk4BnfZFFnCZsj7QE+SYidytepTRMkVgY=;
	h=To:Subject:From:Date:From;
	b=nqKn0f8t2v3x2jSAOi33qVSPvD2zso5lVqCe2TaGq/6mgIbiAZvdkOQWEsLUJcJcV
	 AK9/EWRhqQhHEVnSt0lIJTLwM0S9Q1LEdIlJKYZfv88s+9ikAEwaRm2/u8dTYVz0vk
	 hrcKvh31cAV6t3ahiZUkk8vr4TAjsmjzDbOOCmpsz5g7r++OeiMraf0jRPonPaLGBl
	 7EzhNVixFVEWSpvE4SIlUMEtLn3X7n3ofyJJRiC5fg73M2FtSNNHCHy31a1WJL23dS
	 I3qfwGDBO538e6W1PE213maVicHVeZfrjl7VmIdBYV/Jef0ZQYBK/VI6svWiVZes8H
	 nuYr73/GEMQCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B315EC001DB
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 17:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169108212872.26618.7760137431236308563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f3d981a2a4f0bac4ecd8352e39fa51ffac1272d6fa95b80826239f94c1a643
Date: Thu, 03 Aug 2023 17:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691082128
