Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F6E4A1D
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754878794; cv=none; b=V/7dMpOkTlnznv/PkxW7bcXb4Lw/2JDI1ax51d83y3TKDdoizJchrkHpM3uBNe5Wo8bhf+VDO/JVxB6Atyh9zwDUcCbo4qBN+O6o4/11sKuYPwF7QI9wvyUymZ2USECyGhVR4DVg4zKNAOn8W4YZs3Exq+PDsk5W7HesiCdnFMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754878794; c=relaxed/simple;
	bh=pA0mkRZF47kUJH5VCrL1e/QOSN+xF7mrx5I1nKahzLs=;
	h=To:Subject:From:Message-Id:Date; b=FeBjwzgVHFKUjnGM9Kqn5dI8zZZPPjWzEs2VFyZzH6ySCwkK2AW7TdS8UMKAuzDl7zBVHb9JbofshCkj4+5natdRiRBhMENNcMjmE9eVPFutiO/xQjipv7dPVJ+9DkBNXpXenynQA8bwUwFMYh7/Cq4voZ394yjrl5bGTA5VhhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWRPhiJp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWRPhiJp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12D9C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754878793;
	bh=pA0mkRZF47kUJH5VCrL1e/QOSN+xF7mrx5I1nKahzLs=;
	h=To:Subject:From:Date:From;
	b=FWRPhiJpXuaQrpalLScuQrjSqRyBLGRkku4iGi4yVEm9jxf6mvEEoW9tMBeIo0w2f
	 Hub3vpa3vfb52lnIye7NJrssmUvTMyU8Kzr8KTyvX3vE+2rKrLUO2/p1UC9z7bQuQo
	 SrAVvwEfJJ5OCIOU3FnIdh9kj6r6EOcPPLvWEnH/X5FbV2II4ovqdxm3knI+ZRPExv
	 cggmIR1HKTNO+oBJLr+azHAScy4hqifDMsxW2XxC99dtUiZQG0JxvoYrWVHht3iPOG
	 nbMS5ly0XO2CDKv3m7TGT055i8W3tjSmWlUIgQWUfRRK0A/lsx+4Gc+EN008vvz2Hv
	 9+euh1aMHLI+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEFC87FCF
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175487879357.17571.2296169618138208415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0bf240f6e17f00d7b1f0b58966a2dbe7e28e2f544defcff829071495a399001
Date: Mon, 11 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754878793
