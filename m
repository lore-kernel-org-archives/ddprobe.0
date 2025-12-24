Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E974320A31
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766598834; cv=none; b=EyPGRXEmQ1m/WcKShUDcAaAkEaU3DZmn3zZu7zag7LS6cY4z9/QAwL6glNRCNumQzxODOzUkA/mZxRvasWcsY/qvvGmWS+oOclzPvMbUx7EC1oQV/xntqO3i53f4H+JJs6Vq3BowvDzW+pUY2FXQMg4XNz5xYJQFBoT/W8a71gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766598834; c=relaxed/simple;
	bh=v5Dc46vNnVe1dqv/0H0zKYpAvyuPXQ5NqOkq7siIJs8=;
	h=To:Subject:From:Message-Id:Date; b=USm4Fjrq0Njy23TeHZE9c/pTSS2fUTmakuAhbRWeYy3SMrPMmWoQI24X5iYLn/VRmf4xRhuR0JU5lVq17o0ShC2zWB+PSQwzIxNZx675Yy0b2BSGDNxgtN11V3JiY/YDhnvYu5ROwRoxu5hx5/0A4g6TEh8IvFO20L0dAuw+sCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dN7GEy8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dN7GEy8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A6AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766598833;
	bh=v5Dc46vNnVe1dqv/0H0zKYpAvyuPXQ5NqOkq7siIJs8=;
	h=To:Subject:From:Date:From;
	b=dN7GEy8rG1MtO9WfPgtSHF60/ZiLuo5v6z0MI80yfk36pJvfmCe1mfNemhPC7NFQ6
	 2HBSj9VOaEldE0L7/RhY6M9PGFp8Xzkb/Jc7+O/rDimaiZiHNJQT0NHheeN4s1MN1p
	 SVAe4JBUM9ftAbJJe3Yt521lvCwFIQd2v3VTRI598/eTiaiyCSrw/NAKaqeqqGigU7
	 c6LOtZ7MpipTSfa/RqZqfgcRv+LArRtj0jrhyzrNtpGS2EGc2PA5/gZqcP1M2epcxS
	 4q9RfprVy+81giBrpwRIROL+NuI+46e5+Ce+Bd8dbrKAHC+WAKgyReYfdC/G5Rs7RV
	 o0d4u6XaE/wnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F708E776F0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176659883357.24916.973367802757485431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d7b777c1129eaf3acfd72b39939f623f17429903520d7b55241f91cca820cf
Date: Wed, 24 Dec 2025 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766598833
