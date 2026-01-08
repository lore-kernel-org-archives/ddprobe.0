Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133C043F4BD
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767882834; cv=none; b=Hbxbav7CbYdK2EkOEg+lIKwu9t/OxydhmhTmoGDATewsw3yFl7Zk+OsWBtE4HbDsMIlPWxsasU+pxpkqIQSnR/OFYAhbdx2FwCUXp2HwbOgMGRdYfi8LGiGQ3/Pq/PlnbqMeUBBkkwdbyDBtiGZ/jI2bDiL9I7+tM3sfyMQATes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767882834; c=relaxed/simple;
	bh=uDFCfZA66N1XwxlzZnzDPYGXehHSb8TMaJ6cFLAHr3I=;
	h=To:Subject:From:Message-Id:Date; b=MnTZk4WRVafJQ7qXSDONGfVrybGWG4HH9GBzQg1x4YTMFttEFYq2bdqAA+4k0pg0bkR0geKtHDol9Da/RXdPWiWAmQJyQEaVlWqHM7ASbpuHACZmu7bippWOJV/pGMZRKVUV/eF7QHqreYyoY2DyapQjlkxoExNLPfqfnVLzFEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7DdJfg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7DdJfg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C889C19422
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767882833;
	bh=uDFCfZA66N1XwxlzZnzDPYGXehHSb8TMaJ6cFLAHr3I=;
	h=To:Subject:From:Date:From;
	b=n7DdJfg23ZgONZ2pknFlXwoxbfdP77eIAVhlbaikAI84mgX0YtkrfkMxqAltpEgi/
	 /+XULaFkmlgZbGBBj7xUKPJr9vHh5Exi2j+IcNaIMPLKckYmSZxufhqiuCdeOQqclL
	 9LLkeVJgxFAEXe1kBbefYHg3QF8hX13r7aN39FaEj4KF7MlnpRH5PX3aWKppWz55mU
	 C+2/B+zUDDCpb1icgtJbynPhfyiMEwCthD8E8jD1pqcu4+D9yS4aVFrss+/DDfb2gb
	 saj43QhonS5dC+dUcO5p1wn0Y22ZDwa6ELZySWF69GI941Zbz9iuaysFe1VXTg4XVB
	 nzwyIpjqo+9wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7CFD1488B
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176788283357.6895.3800344799892752304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af84424c182ff3f9895378edb98a314cdefd35699cc9ffe817347eff41234c8b
Date: Thu, 08 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767882833
