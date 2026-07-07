Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528853191C8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783398514; cv=none; b=Ojt57iBuunqtZEVPyVWyN4z9M/Y3Qz4K26KY+igxzzY5Ia3yLrEL+piGXaw31rPGymUKxxz/4pTgIbqLUA4/Kf05XiO7PIK3CLhTvkXjwVk02kK/2bx71MRR0JqhZ/+/DHmU9Lo8JlDwGxb+fcbjDdF9LCFpfAKbg/TjOT2AwR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783398514; c=relaxed/simple;
	bh=uRLZnXvWPvWmh7ZftUMLINwHUnLV7rs2SsL4i7LEvOs=;
	h=To:Subject:From:Message-Id:Date; b=LfrofmcOBCfeDs6kn2ZP4hWfgLsMpGUIyz/uOj/I2+B24jN9w2m5AkpA3b+OQ5C6+Jz2+T0PZ/5sukAPDrZVyG4e6U1wSwGf7jSB0YMpNriip8nXk7xn7M9vnPBojJv6Z8WbgOb94ktAOhZ/BgL8C1f8uMRLlX+kUxEYD/vnAZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnP2a+wV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnP2a+wV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A06C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783398513;
	bh=uRLZnXvWPvWmh7ZftUMLINwHUnLV7rs2SsL4i7LEvOs=;
	h=To:Subject:From:Date:From;
	b=ZnP2a+wVmDN2MjUWdeajaXq9cSBi1UNnOZO1uKVHst8OVAztpneURHMiH/JqDPNqs
	 YGEunEBbQK3rkmUV1ZHGnh4h7fHfLJ7ZdzYeKE5ez3Pz3Bzmrine2dPgZnfSemSbw+
	 y/botcDoI4wcfRpUeu7527j+TlvOq2suUBuRUaniXeYEc8BWDg4mPVVR0KpFIelIc3
	 x8bWCMgdHPe4C/fFUdGy4AiGWqUuZgPHg3yLvtPaPsTe95CAMvzG0amofTLG6pdAIm
	 iqWRC/HBj1wlwOj1ynmeiFuwGdUnk+RZBwWA41iwCxzIRfaYzxiHz3nIkMj7ut0hxU
	 tYEAuYFz5NM8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5388C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178339851370.24398.17240423250016036432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ed31f43fbf5fa074d9be5fbb299778ed4f725d814439979cf0574eeab77520
Date: Tue, 07 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783398513
