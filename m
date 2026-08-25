Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422F2331EC2
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787634034; cv=none; b=h6L7//U/IJ/eQnzOdi4Pwd+Rvti5pxKYmyxPTKJLJd8NBFKUfG2PkqA4PLWtmD81e8IcNMV8ZkzYt+Q2Jtil3ug0dZPeZ7obV/WVpbK1Bw3j7kACV7jvjgwGJvpMDBB63dGYxCsgbQH2F/4VyRmSNNnrJJgDk6NvzCmbHt0pi9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787634034; c=relaxed/simple;
	bh=eiLppPB5lZ1daCQqQCRvGNaxjbMxitssYdaM4WfeJqM=;
	h=To:Subject:From:Message-Id:Date; b=AEIqmRuJ+rUZeJqYkaPVhINpVV2Hu9Iex2yEIUKq8J2o+gHQf0+5wS/ACzArzV+miZPUUeg0mDmxYkrNE/5tY36kWAP2PqLdxx0TIuiQqHK5ZbhNhLn4J1c99l7Ml9nC/cmP+K1Z61vp0U8q3rCkFHReqIEjLvUOQyMNUSfHZ1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zjtz+bxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zjtz+bxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF003C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787634033;
	bh=eiLppPB5lZ1daCQqQCRvGNaxjbMxitssYdaM4WfeJqM=;
	h=To:Subject:From:Date:From;
	b=Zjtz+bxL9P9IfoT56/tXG2Mrdy+IMe9b1T1seu1vPbIHSt/ETbknHSsYCNOGBZvdE
	 22JdNQmsxDF0JVMRDxX3H1yi8qi8tPaJPTCD0w8pVx4upbouPXIN61j/bsvx9XZ9ey
	 fRPL/vUlgT9YtQYYG+WooTQm02I7z/T7UsJwFg5S3zWeHR337+L/dCjYIFPxVTyExA
	 nwYIHXLb4uHAo0LrcEhcZSYbMb2DV0TmujiHyNY3TikUyNI/qezyL3t+DuXr1JVQXv
	 viSYnX+hyeelsdyQLOY22yuTHai0pafs4BQI61uAFLuLCg287XxroI1Z+ksJ98VlQ8
	 fcUojgK3BZQtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA64DC5B572
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178763403368.20680.15532162733145852561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701051f24ff933f765769f8986f52de75e73179ac46744c2ff57aaf988e5e570
Date: Tue, 25 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787634033
