Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3B4139B
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724198754; cv=none; b=m3VgmV8QXtSN52Z77Q9M5JjHiINOIa7ptlc+/ojYZTl4TFpIFhWl4Sz8b0Kkmmusuh3bK4glzN6cHZL9zLs8bBjF8cr8oomtYub9i3KHCTFHQC6IoPHMH1aN6aHxLR9uEeGdp6SCjcH/2Sr05g/qEhPNUPg7RYxu/uAvP9mnp/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724198754; c=relaxed/simple;
	bh=pHu2seKDUakguHyjHRR3wDcpaqrTmJQ1AjaPL45Peac=;
	h=To:Subject:From:Message-Id:Date; b=FRlVLfI24RblWVQMR6FJWXeToD4XxxsOG3ORw6pgwYKOTlBhDGEUPkJljx0Wa4YvfDPKJsKGX3k8KwTZePOlry6c4SSkmgzXCucipuLnr+AiYLvw6SsjTS/nNY1Zz7LCk2iupmZ1GNwOEqG6g8vnttXG6q+yod2FpUYB1hc1SLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeahgkeW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeahgkeW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87C2C4AF13
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724198753;
	bh=pHu2seKDUakguHyjHRR3wDcpaqrTmJQ1AjaPL45Peac=;
	h=To:Subject:From:Date:From;
	b=XeahgkeWa55lLO0MeHLQseie/2xKyucg6d0Ncv3VFQf0pcqbQl/zK6P0bjMrWvAO7
	 HjbfoK9xzHnVw6bsJOJwyBrXoGGsWLZ/TqPOCT3S1vLU8jQTDZ/S1FTcb5vyMGS64z
	 G+7bYUQ/QijuCL2jeWusq/Y3GU8WQ6ynVCB0t1eYj7c9tpfgOJaOztPUszi8xxpMUG
	 ImPxEmuHIzb8doLcGhBz0OXEriVW62Y5wwCA7TmIKDMab+QYXOX0bM9lmvhN8PdlcB
	 WZEyOqGsLC5Dd7Z2ZL4WxhS6e1JJeIi7NcONwFm5HQanONi8ikiFeOw2+hneQGbPsT
	 1h3DASTpL4SDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974FFC5320E
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172419875360.4915.4570246071337751599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e40b9fb4ee9985595d982f459f068e2f718218d477f4a55761869662b04553
Date: Wed, 21 Aug 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724198753
