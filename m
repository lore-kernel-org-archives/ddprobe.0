Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F47E2737E3
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781012734; cv=none; b=R6mc38WgvM2Hd8/96sK1A5SLdylsTHu7n1micgoc/Wx6zy79dILnMxJCzaVUDnbttceLLSH2fKtFCeAIXbbBCHNZZHbFbB1hcovwCdTmRUrl74aCVP3BV5n2eV7i3lChrtJ1Q9glmpmLmdRGYDDLk3JdUJmhjlf57zOfzxzNDCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781012734; c=relaxed/simple;
	bh=L4Zx9Varx1K+NoLAIwoOt5oFx/PCdDDXO2iiHuvcW6w=;
	h=To:Subject:From:Message-Id:Date; b=TbNDvqB7LgyiSCxUUbOiuwpOzPSErJLKADn1l23RVZ7nYBOmNEHJv00YlAR/yjLssiTx9nka8rwHfGGn834NNS0e14VSnNwQm3XF8+79fj0TxVIUzdCUih+kHHVZYV7y9zlvrD/W9lZvnGEU9v5ayYIElDNjlFWUHZ/bICIhWFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9CAJUOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9CAJUOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC76EC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781012733;
	bh=L4Zx9Varx1K+NoLAIwoOt5oFx/PCdDDXO2iiHuvcW6w=;
	h=To:Subject:From:Date:From;
	b=u9CAJUOD+uc+dSGMzUTzNznzK4T7Y2Z/c9W290pFoh7t8aJ9meOXGe6jpRRdgg3tY
	 Lg8+qD+KOZIO7dKnWhXRQOpTJeRry8oN/J9c0czrzu9r6CRRM6EgVGMsyBWEQfBOZo
	 WhPphZGQJN1aGUnc/MdMKV2BtoTn/a7F340bFN8T15YcAy70+/2AhNhBOFU6s+2OkW
	 TzWzPN2oi1Qs0K3TDBkbM3KA0YJqVPFiCG4y0OP7s+G6YePsUB+Lyf+oSBQhGeOhPF
	 ELPfs1dq52gB1zV/CNeGmms2hsvF+vKVudlX9kaiQtc1GDD44CatvhSx6MVvS63m7S
	 c5BOmvxmEVUug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEDACD8CAA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 13:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178101273369.23197.14714768034151376227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe903e9c92e14bd3f1e25ea5a254f7ffe799ded1802886aedfe676c59d0cb05c
Date: Tue, 09 Jun 2026 13:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781012733
