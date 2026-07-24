Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A332341ABB
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784902234; cv=none; b=HSwSuvxZspmSRBTqgkr8+GfKsnZWvVjtbJSyqzhTzxH7V6J61s51BfJ7NrFuWiEr7Ex7P7EVWRABOGE/ROC8jY4ZN8iQaDsZSG1uAgjAUOoU1m/RAsa5yg06uliAOBXwF9McMid8Bg5whf1SsyHyOUkiYGyNDRBOXfc8uvcU8pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784902234; c=relaxed/simple;
	bh=8OFPE+yOkgm9zGl2o/uEO3+S1So/DpzN5P2ELM+rkGM=;
	h=To:Subject:From:Message-Id:Date; b=Sc94OzgXne5D53E93eEeTcDSFO5rZK7TXrPaTcO470JOVduH4QSTlxerSFSApcmxaGFkoaClzMMJQMiJ+IvA6jN9yBMD10Wyb0HYJxoxS4kZaAnRSfZhk7F2wXFPBiF6m4zWQ4gCrxGStMNTSFni57TaqVMtp4plJxorsEuy9oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ci/9etle; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ci/9etle"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EF3C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784902233;
	bh=8OFPE+yOkgm9zGl2o/uEO3+S1So/DpzN5P2ELM+rkGM=;
	h=To:Subject:From:Date:From;
	b=Ci/9etlejg6vPd8MPzxP8mGpmDkgDUDHJgqK1zGzyXWN7ydLrqnpkFGsHhYe1qGPI
	 70hlLmX0zdZ6W462M/VkJQmmoFbfKBU0FGa+cueUg67vot1pTV8mbFXMFYVfIh+H7q
	 f9YB8GhBieZqYkwO0BtML46YQACYS3woBbQbIL49MUitqYlXXNRnacsmw2MGKLGFzC
	 zzRFJWyhYnuMNmS4WfOQKbDeGUjrbQdDPweBuyI8Vfx9oCcv1hUoSKKm/P58eppA3y
	 Qb2+QqdFT4Jq/6XKuShjm7fY93vOX9b0YoMsY0CTtYZk2Mtlk8H43ak/J4/16FCcn3
	 eV4GN9d3ih1Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE72C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178490223369.6940.8404219301282948880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157482a7d9d545bbf74050ff1ee3e764bc2b08353dc5f2a555ff25a9ac604a42
Date: Fri, 24 Jul 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784902233
