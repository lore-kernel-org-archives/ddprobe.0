Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E54C1898F8
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748589594; cv=none; b=rqEeTP9U0K+hssH5Vz+gxyWBmcJ6FmyajIvRHiYb+TIXOkIYvslRuzG6m31yFntUhs5DA5Mud4cD+dxMCqvGRNMQ1VN6SH4HQwUlbo4+J+CtxabYSftzXUB913E/5gvK/COFh6i7W7bvgyvgkS7Ht0f3DvBokswZKtubHDjZ0ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748589594; c=relaxed/simple;
	bh=TGpPRp+AASWScvpWCN5lxDyL19p4PvIysuizm525bDo=;
	h=To:Subject:From:Message-Id:Date; b=WKmmiyDo6SpWNC7Y8MPaAt2IzukyqGqDpMTy5IYA6X4WhHEZzSrfeKlQ/TYd/h9k+g1IwngOz4K/OCy3PRVZ5p1wMhVN0YJ1uOS9mB8w1VY5/PFzWaLXaKV4dP+AnjJfW/QgVPtjS1Ulk7KRheORbf8RzHgE60iRcVAtBKEfbOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwjbOfoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwjbOfoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2ABC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748589593;
	bh=TGpPRp+AASWScvpWCN5lxDyL19p4PvIysuizm525bDo=;
	h=To:Subject:From:Date:From;
	b=SwjbOfoqKFjpdTyNtb1dtOa3MMzZoe4S0vOvmUDbJ8t/K9+aB/Ef/SXGQh/pC/Pgx
	 jp4ztkwo6Lu556YqqImD/W5U1/GZ6r+K45JR3v6QI6fmfySpFSgNFg7V6H/ZWNhc1k
	 bi9yKwssZRcMDd02e3nZjwHthr3YqIYAOMP3KXw5uCQmdswBQbY2HbKry/4j8hMWAL
	 y5VRNYz5AJRi+HIyQxSDbCGQuhtQGT8sVCn33K3Tjsf2d4ejowwWCoUzmPmYe/kLjz
	 seuZKZ7KajxEyWUHc5Ikxvv6Lm1+X6Zcc/sq9QV6ZRxXBhpN2BjNbFq8mtfp9MNOkB
	 wTlewWnqA2utg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1CCC54F30
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174858959357.16341.11428190622346175885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3815ca7105283986204bad53c373b8646852d12bdaaea7a9d40375c8b87ea95
Date: Fri, 30 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748589593
