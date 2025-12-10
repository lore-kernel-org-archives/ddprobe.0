Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23033D27E
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765329774; cv=none; b=pbjcatnwkLW/V5G0D9V1EX/914EjSJ3YHX0G0ZmelUIUbQgfbsTSqgsGDHB20pJnhIxSjC8eNPHZB3kDmGNWtaAUzzAWDjd/vUk6sWZeDpMwp1WtH2TTFnG3vEMIdey4h9K2alK2Hf/C9vjgeYS8lRAWBP3PHBUpyQ68su5z8lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765329774; c=relaxed/simple;
	bh=kGJkVzNWl1y/yFZ0BUR3MhqVSjnsqT9tVsP96HAV+UE=;
	h=To:Subject:From:Message-Id:Date; b=JkMLSnTrIqima+ctz5zm+a4m2SmBzMmGvDZMXZ5/7ICgAVG+r4H8+lXK1fDFx3fXjOkgL5F6oqyAx8tfidgHHFShuuH5rJI9jDlMIilkqMTCmTw6FJQrnHvsD/y3EXIaTdwyEa43iUBigPiZgMSCAbgX5R1Iiw0hLhAKkL2FIXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9JK2UVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9JK2UVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E8DC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765329773;
	bh=kGJkVzNWl1y/yFZ0BUR3MhqVSjnsqT9tVsP96HAV+UE=;
	h=To:Subject:From:Date:From;
	b=i9JK2UVsXKFFk6WnTjxdcsJhuMqgQiekXJNF9QdYVSl0SG6IvQSLsxQ3BEZx3fiAB
	 fH2IB3YWJl4clsouydZrrrzIMEqx7GlhG49yJU2M+ybhe+7WPlDO3CDL0dxxKlVmEB
	 CNZ8fU+G3Mqhss+7s6R91RGfR0HIglfawgSmLUYM00pefurDqmRIsMe9PKmCNo5Bkb
	 LQTCz5OcCtECNr6Dwt4Nf1Gwvywtibx3Gpyezj5SAX4CGeCPPR/mBweZSXyCr7ilqI
	 IWNg8GrQ9ZmhKCfsePj23KaagD3MZsx8Q2VkgWnUQxx3UNSDHaX0wtvaVQYa36s4ZY
	 4lmdozDLVJjbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904C1D3B9AD
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176532977358.3357.2666741502866888321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1454c4d08bb3af216aebbb845b8c91928088890efe20beaa0fc601b3a388feb0
Date: Wed, 10 Dec 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765329773
