Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD0014A8B
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736694953; cv=none; b=o+PLDN/BebIOwN43KP65qU7FNM9cSINpKA9bI8O5ZoP8Qw2Xd5+mX1gGUQ/aUILxx4kkRWKE2CMegNvD+oTG4CjiMxVV6G4GU5BMduCVHPbjn+Ls4tt+7ovgDtQ9fSjjGaNxdG8CBY+sDPkij1AZUsWLjDRG5+8m7e7ayi2P0Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736694953; c=relaxed/simple;
	bh=BI+v/zFt98zqdJBwt1M+EY//h50Ckv9HxtKWCJ+NWDk=;
	h=To:Subject:From:Message-Id:Date; b=ICYE2e8ddwQqdots/REIpqnvxH7lcawFtcIyhocKsdf2lxIQm18Ykv6ij1kxgwFpU0GX3IrjUx844Ns6JhBFqb4qnEfpJhZH8GE1JQ2PCUh8lrKCFv0AUBLaRGeGrSSuhNjPaflTf5eYK8jr733gIis+N6KVPGWkP9YDScrluHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQXeRn8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQXeRn8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F4FC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736694953;
	bh=BI+v/zFt98zqdJBwt1M+EY//h50Ckv9HxtKWCJ+NWDk=;
	h=To:Subject:From:Date:From;
	b=XQXeRn8IuVILpSQHvqPGpms6q7PXrhkhqdRVf4OqNj78flJ9hzi1tkH2gX3b2jpeb
	 dz9VX90s6O4sTJYmr5qLTqKD8eZdZySZ9LmVhg6ALZXCU+nsiv5o63yx/gPa4UYHzC
	 ukvHvk3aPlc6r3KZM6cPVW+1yniMoPj+f9l2yJNmQMTPo5qKvIyVvRes5tsGEPQBG2
	 1FG35fceOR2qn6b33Ja0X54HlyWX4DppIBl3SwkP0VMhvqBh5G7NTii7PHEy8L0R0G
	 b3CM8vj0R6f1u374xvyRQuO/jLk6QCUiEQiHP5fSNR1bLtPtQuZHabppX9KTqzq3Z+
	 YRWqvfLY3Tv9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A06FE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173669495361.15082.18378252557462616211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a26a78c5a86ebb1a0558cb5acb9a819ce58d31bfba84a0290e4cad9b40ce4b
Date: Sun, 12 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736694953
