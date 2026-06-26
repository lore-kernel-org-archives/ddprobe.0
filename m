Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DDC78F2B
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782447454; cv=none; b=fTF+V6W39mrEYMiuc+rSEEh0Qe5rrKRLqt3M47g8KU5je/uHou3M+GBzKVprd538iv7IxFdbpYKQLavE1T/LX7LV2DpcIOYVc2KqlgGqcQUfRwe/na1hzePrPYHMeQG0wckDJ+umpwdnCb/ib21oCACriKEnbY7XkkSeOH8qrPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782447454; c=relaxed/simple;
	bh=Zs+i1uMujqXljeGHhbC3rwY53MQhREZ/rYLLuP/GtmE=;
	h=To:Subject:From:Message-Id:Date; b=B7SmKNa34X8BsyGptYnkxZhls2/iyGfH3NAgoh+GhIwPCkXOPoX5zHRLIXoAEJILI2RS/KXNWHpvXr/kUm2Mz9+XSYtmJCh5tU2Y2mL/DtaLXgqDO2726VXanY5so5CzsbvaHDdW3Vr8tuRy+XUalOFRaAxcyB2ihUUIoGDyN0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHZphSIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHZphSIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5D6C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782447453;
	bh=Zs+i1uMujqXljeGHhbC3rwY53MQhREZ/rYLLuP/GtmE=;
	h=To:Subject:From:Date:From;
	b=UHZphSIi2KB9o7T49IiPignVPJWp2EYjG3AOSrFSDm2S2Uf55Lb428IVQdKe98FQk
	 YnT02sEfF3B5Gt18EaFEwb0vli8XDch7vxOExg1g+CP6aqJCif6S+pD53vLUKkVRYA
	 sqTz9i0phbGR1ZhFKLI3h7Jn6cTXXuoj1T5S4ezWy47PUt8qR9Wcc2rtJp6SsidviT
	 +PfUyD1I7rxY3zCseHFpJBaKyHoFfMrrvCp0ryYrEgRs8OBkgxzU6+AlcouGNfmZvI
	 crruh85ed0oSEgImehZzWjLUvGvKZFXj3u6AvdW6mLW3C4+UcAeI3MzSyWdRtKoKKd
	 fcoeyNARQM4Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A06CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178244745371.28353.15701389998556921546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c647746766ddc321dc0920e970db30791d52500104f7ebb176d69357776402f7
Date: Fri, 26 Jun 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782447453
