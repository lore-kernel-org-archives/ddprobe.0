Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E0A3890E3
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784128714; cv=none; b=KkAjpGL0uTsB8wg1tpZenteWDTygQReV8Vfniyk+LSk4t2llVlPaF3EXHAuPG3caMZ1ujowMdOPZn/30d2t0mlFGfy2Vh0LFEXvHCn/OxL6yM9a1nmn/i/+K1i5vniRu+YaYKEgi58ejZEhUQsRjSGaZL5QOVY/BLUOe8WAPGtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784128714; c=relaxed/simple;
	bh=PBsQznxII6+VIV0xWhlSXkEdOFqrWY0JBUA/v4urO40=;
	h=To:Subject:From:Message-Id:Date; b=Jke460Y1Rp4z+SFS1S3OqrtP0ugB0bHl7EcLxXJdZijJTeIaYQDhqdUaSwgFo/2KEb/6bFNUasm0n2xGdiaoRxRIea0+TlQEgGV3TL3Zl/FpR4RDc2wp5fuwBmxnpo0BiO/6wy6jD/whEGs6wsAmS8GX5T/oKytPdQEnSdWRNls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVr2N5Ce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVr2N5Ce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B94C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784128713;
	bh=PBsQznxII6+VIV0xWhlSXkEdOFqrWY0JBUA/v4urO40=;
	h=To:Subject:From:Date:From;
	b=OVr2N5CeDejTHWm+/xSu4cIGOhmL372K+lHKMomTCV2eS/pRw23Dle8hOPqzYp4Pp
	 omkVvrFYPjDcgh8wOyMwRBFiP89DxiLSc6Vfp39ULXTgk5vDzrGkHTLyh5G6D/vO6k
	 zzCk7rl6jyGx7hQKddutnYRMlk2eJrwO4M0/Zdt+G8XftpkJ8Orf+NPqWNQRDpWrdU
	 ADRfLnAR8EpW2r/KQ3mMwswPL8Q4GBKERYwhk+dlMCudsSMqAub44zS7jvSiO80lbo
	 an0B53qE0iiaBJfN/MZPZArj2TJh+rV/TzljVKObZ4rHYB9mR5ZaU6aJSEZ+U+It5H
	 Zi7DNzoNjthdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA6BC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178412871369.18588.14036164392017990836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1eff0f21948498914be6db38c4365bde5411375f896fe27a8bc3d65804e8e04
Date: Wed, 15 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784128713
