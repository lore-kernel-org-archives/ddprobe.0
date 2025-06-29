Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1F617E
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751168994; cv=none; b=Y3tyNIcXDQkktadIGFynLBbXJCw0nS/bDLAlo1tvB48jriZFXFkKFgoGccg7u+ceRmq7O3DaCQvCCJRt36qWA6G8ux5aInwLdo9J54nOKmhfN3LsAZi0UjCar2YI1Op3WtNlXD9t3qhfKp2bu85J268LRrubLH4oIO9Ut8nVIFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751168994; c=relaxed/simple;
	bh=nh5ZB+R5IA46ectMXDVaRJHxS6OltwSGJTZjxLGroGE=;
	h=To:Subject:From:Message-Id:Date; b=qVsHBbtUw2JzZW0XFIapVHGVgYfkFQiOn04GEAlMXSKXpzpzVusaElwheSCWewdDhl5G6iApNgyMZKaqTaLRztO5HJu9C/JADGX2Jx+GHTN0cbt76xjaZr9pjxKNuTgl76EgRpSMlfq6nl1FH9SUwI60bqLgzGUAENfc1uIGyXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLXBpWnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLXBpWnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F90C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751168993;
	bh=nh5ZB+R5IA46ectMXDVaRJHxS6OltwSGJTZjxLGroGE=;
	h=To:Subject:From:Date:From;
	b=fLXBpWnP7waWX/xUyCt0lkx3eaOXvJX3oSanfjRRMgIt+jhF52SFA/u4l5zwQyjNM
	 HdWcQqRlq60qsZUOituRoKmqC3hZJ941n2eVB+mPWHzwjDlXSdXcRxbpCwX3NutF25
	 zYHkFoJABOQ2Tn+K6CQLG+uLFPkNQAOxkL0FJv5/Nrpv6TjWVGvzt1PWGH2Bi/qk+c
	 AszoktJQcsehhTo0d8/qLsqt02j4wGkMvPqwCAlSm74IdmeL+UDx1bw+GZsUYvpA4X
	 FzuX4zOFSeRp+9w2OVmi6ZK0ojHN3sNCqrUhrl2zhAnDQPMY8JQ+WUhjn5QX1yfURC
	 I9GmQD/o7RMTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D2CC54ED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175116899357.29591.17405269454879709975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701923adae2144dc403f9f50a63f5d410a8917f21179628e1c4126d815691646
Date: Sun, 29 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751168993
