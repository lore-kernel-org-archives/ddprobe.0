Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6542424D75
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790337634; cv=none; b=gkYI8NgdTG65bA9nv31Wu19Z2NeT95Cg3Wjj77QChdViDi+VItim4DXnq4hQo71o5qGhsfTMAxPC5u4Cl6rMx8NRTs6dlNZ6DJBcT1Rc5Yyt8hu/Oa4VRhPDzrVYOHgqos/zB1C/tBV0fj6Hl5fF7z+efgB/HpGrcO+FXoDYDNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790337634; c=relaxed/simple;
	bh=dgdWhGv+yNgOvjOVOydeR1bVxp/mOa0Bt5Nd5S2mA20=;
	h=To:Subject:From:Message-Id:Date; b=jte4yV5xxXOyxPFoRdaLWcUo9pd/pcAgBhpYvYUDGK4Jem1bMgRS8OlZo1HwjE1LtFuqhw6vSkl9TTJqCmkhWk1MSSHb7vuMx6xBAWu4XKmf50f67WLuQ89xUlDVETaksWNZ3AJSpzIIDDvLT/9ibYr+iIh4TV/U0fDoCN612iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPinL7FG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPinL7FG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D846BC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790337633;
	bh=dgdWhGv+yNgOvjOVOydeR1bVxp/mOa0Bt5Nd5S2mA20=;
	h=To:Subject:From:Date:From;
	b=QPinL7FGjkZ4m3iZKZHJCviiTepSV/49HWIrNZiBOeWbRHzutsX4WAzO2cEhKhsKv
	 iwXL7mLbJnIKHTO5eXcY7NP2Mf5D1ld+fHXxMJkaRAlhIBLokFg4a2NLO9kHEgARn/
	 1kMPLAPC2ODrlkeLizts6KNXzf47Ifzv8fRWTIQmDpmrvyYC5r1mtQ3dmRNUaL6bFT
	 g9Xt8C8LUo8qrpUJhBMQfG0YUNQZFpdOM3jIlz4DSPxqHDtAeKt8j00MTFuYXf06MJ
	 nWWXqVR07dMexkkFPSrmoaZhFjBOX/olctZXrxY7Mpp89lRmCh96//XHUPkyVAEe4M
	 jJWJFPYHo4DPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1552C98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179033763371.25543.3833668245030321205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80bad92fb2bfb993eb264281a05525bd45cc978a094b09be0901c504baff0a27
Date: Fri, 25 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790337633
