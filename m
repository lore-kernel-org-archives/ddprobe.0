Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C67C4317D
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771968894; cv=none; b=pHr5sa3nnne4VKJzikElKh+D/Iuahn4njkkQOHz7gD5TOWbmyQPVZnOwqiV1BjM0QvgrHcu58NOlUkKXPjRYbxRQw0o3E2bQ3FX17rBmo/BFJC/CzCopYruUyfPad8qQBdyIP7+ua6wv0HzwFxz3IJ5Q8wKFY5rNc8EYP7kWHCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771968894; c=relaxed/simple;
	bh=NX5WxRKmkyLD/2rmdv618TDltZVAOwcWViKRYcL7PLE=;
	h=To:Subject:From:Message-Id:Date; b=YO/YPACT8QY5EKlGVZvWhQJn2KYaGN/BCK+HykSMVvO0OTjBmpd8a3GVyEgdLNCdQce9VXDqc4S0fRQ+e8YlCk6XLyWXxgkR0S6Wn9Ze44mMU3vG19xn4drqDpwPkYToF/sEgSrLem6o2H6MY+LWA1pueK4cYcgylVc7nXCN2XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEYqPPY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEYqPPY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E71C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771968893;
	bh=NX5WxRKmkyLD/2rmdv618TDltZVAOwcWViKRYcL7PLE=;
	h=To:Subject:From:Date:From;
	b=GEYqPPY5mZBkPnzcjDt7uUNOT6a4fxPj/jVRCsDQxsVtDcQD1ntQWgM7SmaRiqMlR
	 uz+2xP3+cQCfQ8GUgvfAvM5BH/4PZUzoyzsXgwViZakjSqIxxbdZ8B5SRdWhUtRGto
	 LJMXCndZmvdrkLzWYlVbr6HR/FfaSTbEUKfeJ+vVcSKQFCgdLpb9c2T/+yweKTJDEj
	 5HorLyQjJ772FfFusee61MSMWPQkakxy3plSGxQBqN3+Oz0EFFvmcNoQWc5oiw2MRr
	 2s/QGrGfP2D5U3sEgvH7VOor5eMgTGD1e5SyASgrpnzy2C9OAvyn3v0llLRsChMcSm
	 3r/FAou6EzQbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DC1F4BB8D
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177196889358.23454.352891608455198203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba90c7bbb00f705d2ba51f97e3e46176cb70df15c48aa1e97e9a00bb287ef7d
Date: Tue, 24 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771968893
