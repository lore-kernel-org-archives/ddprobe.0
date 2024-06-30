Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CB42C1BA
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719784463; cv=none; b=VBlxN8nw0fvSm+6lXqiAVA/lQLq5Q5vFMksfC+yxoEOU540ONbnhWtP6DVIo+9objEry7DEbW/12W6bpKGwEHFHZcdwBXr1PyvoLXNE5IKNVgzFwVfOaWc7y/PtFFQsI2P2GPxnL53pT1yNhDCoeDMwavadesE1SsHV3Nw6tblg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719784463; c=relaxed/simple;
	bh=HgxfAX8vo6ORvzDld8KdQ+Qv02d+cz8KeBDpe3NqC/U=;
	h=To:Subject:From:Message-Id:Date; b=esbVbJXps/byXEHJX7ks7W8DfLi4rX/yFFc56gFF2zp1ExfrZy9+R95g9V9xIx0RGI9X/H7fiqCq9C7l1o/x4TKAx4sZAnWtCvU9z3T4dfDfMPd8BElkBLN/BLDiYcN+F7VNwUWJ00jTlQfkffr5lPOoutVHEEfwJAVAjfeDjio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaflYeAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaflYeAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A06C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719784462;
	bh=HgxfAX8vo6ORvzDld8KdQ+Qv02d+cz8KeBDpe3NqC/U=;
	h=To:Subject:From:Date:From;
	b=jaflYeAKA7ebTKKlk0D/my7+g9lCqsGxgf4NSGjuldJnWggWtdrP6WBOKIBB6vMxM
	 Gh15fvG3dDXgfeGz/mCR5t0zQS8Z7QgPRQ3oD1/2pggGjOXSz/VZsocfzI8erOQwYJ
	 5KhIsw6s5oImG+9g0icw/m1DkD0j2FyL5s59k3Dl0ZI1f+YpVFh4sRe/RBTi+8xlqm
	 /s/ettjCxBaad4pBiGEJGVHn9mJuZvUO47A5KXSTHjlS3s2ukJOPpR6Z8LgEtAdxxY
	 Bh9dnCE/DeiVLHT3pkf1CfSTDmnEC6jthDKqYeNu1RPwAuTiG5TIAYI3L3b/Gy4ZyR
	 JPoE/bSBsitsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B4DC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171978446275.17374.2461293126040064940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a722ebac210b2e53a37ab20719d53013c3e3eb73bedb00054c24092da4a06406
Date: Sun, 30 Jun 2024 21:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719784462
