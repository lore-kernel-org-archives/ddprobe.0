Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3441E37B3F2
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778877634; cv=none; b=p+k9SDa4AQHIfXFQDM5/HFPyx0KEKIcKHI/G9OulayrloqosHDbhF8lreDdE34Prx3UU79vc3MVI66acCvgF7xnYsVtGa1xewvkx2+KmBXm22wUbnBjeyCqZAYs7bbPb2QgkCaLyWbME2krxPA0ZTQwjWZkOnJP1weQBp6zYtYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778877634; c=relaxed/simple;
	bh=jvbQnUYdcQucGHsueT57RgGmmQ8eaet++WZv/cnMGgw=;
	h=To:Subject:From:Message-Id:Date; b=YpxSxV6mLVeA0Js5w2pOXLs30Xb+uW8bBjnWH/4VOLfYUdvRhNLvWegEKx0uUkgLYog3t+2gU3U0sOo95HSH+2mKkjUSzvlCmgXHcUWqpDnHn2D430hNO3rGXO40X/G2NwYyxYwdboI8nxjU7UfeTZS6A8QvYSWmQDTmKd3xpUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCAVurxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCAVurxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6AD9C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778877633;
	bh=jvbQnUYdcQucGHsueT57RgGmmQ8eaet++WZv/cnMGgw=;
	h=To:Subject:From:Date:From;
	b=kCAVurxNnFd0Nc1/NmhdX81gCKUZv/BFfOXo3mUNnk85jCOcMHq5HoTWvGlwuRmtC
	 K4EWYSZlHdoRkyFL1GB7tbhdB/3ch48m79uNfywbv+kShj711U45TjDEPZtf5Oh7vy
	 Hb0g7BVWmvr5MMO9H2CmW/rzmg66p4x2++Uc3BS3pl0He9Lud0XGJjShRKwxjDL/dh
	 qNTfJW3XQ47BEpz3hvjxU6pDS3bNZJ1m1NLZNAt4KKZV80jqXliBAe0qMoIFXxKYGb
	 d2IaWVZ8H9nFtXcUUXqXdGcrfkA8B8APDdMlWe5J7jZg38XzpkfNQlvONl+Jo2kokZ
	 l2b3toCW3DSOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12F5CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177887763369.16841.8136850671495264493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fceee262e8d9b3ddbd37977d4c5366436994952848b748ae62a1d39a19da050b
Date: Fri, 15 May 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778877633
