Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0801B349AF4
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773996894; cv=none; b=B68+P5Qwjm8HxhG9iLbc6A+s1B57KYis86/D1at2D4578JYZXDKdv77kL7pL0rfM2d9HMaRD7F6BSROttLmb9tInVF18hqngz0D4RdmY5qNd6rh3/UFlibxh0X7PQ6blovQGvgZ2GmoloxakZ1cgXdSjQ90SJ12ics2sNT/CLMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773996894; c=relaxed/simple;
	bh=urgrO+VCBf2FPvJ0h2K0Ac1l7YqJDbSf/K53Sg6/Wps=;
	h=To:Subject:From:Message-Id:Date; b=hWYvvdE0+Iutguby0CiPWrgUk6QyrSppNhzT8nae1X+YeUL72RyUkI4/zmV2hnLbXcESsKb1CEyF63yyIDvKz20h5jdnT2ZdfmBrLr43pihCNxFxVeeYpdwWnFZ0i1gFhVvNGM7CQBz03nIN67woWwTlDvfmCA/DNizVKVbAOqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8JkEwLs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8JkEwLs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D552C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773996893;
	bh=urgrO+VCBf2FPvJ0h2K0Ac1l7YqJDbSf/K53Sg6/Wps=;
	h=To:Subject:From:Date:From;
	b=X8JkEwLs7pv58GKR2ngAdgKtZnR/8W9Bk+Wi22aJSpY6jNsnMKPw8ZyWpoUpbFuYj
	 jACOPE+s7TH6zGkRMKFIcv2f8JRPmuLtrG5w7ZykEfqPD4UkMSmnIk3hYVfSmPzJcV
	 I+Kao6npoSAVwVAlmoIY1Xucame3asDuq/uoZwGvuikTKazOZMHjAaz05ghl5aFGlE
	 zsdj3WrHv6yHeDFmxzIzVdIH+pupRSLH/9HvJkNO+FiauLhcp4/tNewoNMd8+faw9Q
	 Q0rW840tkZNKOSOVP5Ck6O6gQIJsQHf26rFNrH9rtd/srDajhcaZG++JWcvBqk3onU
	 jhvF0SLYXQyuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F38F109318E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177399689357.3951.9435900665080600699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86db98955c38ab03a59bea6623bc461f34fb44f69878c1502f3d665ed6bd3485
Date: Fri, 20 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773996893
