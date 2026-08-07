Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87E31418348
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786106435; cv=none; b=OV/aENkLXU2OPvNTVBK2DZydcnqMJqHvy86ipfK2uF1A8EBFjsPKBzRYENxoEDzMFvc9Ygfe6ALZFh7ajM5R5KyR1TjoJ1i1HBBCW2+vWODswmiNsE1odY69YFKcCM23yaUkoNfGgxl3S53+iZXSD3N8ccH4b2uz4LVPkYO7UqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786106435; c=relaxed/simple;
	bh=RuS9ZOMXzMgzZK3YwGIMFwaetcf2xiP2NLYk7tplbKE=;
	h=To:Subject:From:Message-Id:Date; b=kqme0Wy9kVqrBSg1LM5oygKE9k7K/0BhOh++3KfSa/D9OypKi6QtjAvxkmJliSD8YZxnWZ/p9oOPNNPSPB48zvkwHEU52LIa1OxemRSn6V/8ESJbbd/9JVUysIH+LtM2Lfw0tw9Zx0Vj6MZjm2gBis1OU9IgVPhmzEF6+5yZ9eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5QmiXxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5QmiXxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F5EEC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786106434;
	bh=RuS9ZOMXzMgzZK3YwGIMFwaetcf2xiP2NLYk7tplbKE=;
	h=To:Subject:From:Date:From;
	b=J5QmiXxUAzgLQBOSWUte63kGwgmvreqvycpJ5bNIl3NgZGKdInsyuNscd8373qtx8
	 Lc2PYsClMsABF3vcxh9gJSrN5+K3sMHrylYgKJf/O3LzDdGMAzxwhiVF8NMRTe+CBi
	 mI/48s9cpwwFzmR1wkTYr9J6symdrzg5qNXRRyE/GZ2CfFpgjAovuL2F5qdQzwcaP7
	 sTtaUulrYqhiGc/+4U0lZCbyUjh8F0OLSLiDq5H+Zzotczj0OS4ecHejN9pCCFBHVT
	 XsVWFKrFcEGD1qcj9ckAujoOGCTg3vG1K8skzVD9IBkYA18UhwHGm24psXle8bykqz
	 FMqMbdpilzNDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC8E8C2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178610643380.30338.682326927172841164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd9cc9d29a983f8e1767ce183c1fd932e4fcb81a577685116fa1bfaabb5aa635
Date: Fri, 07 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786106433
