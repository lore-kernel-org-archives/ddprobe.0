Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381E621D3E4
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772391294; cv=none; b=HEkzD8D/7VjgDgsftEU/U31pDsskCa9xmAXLw8JN7UkxnpTSqUEl2Lc8Ml8YRHUzkTofnfNE91Euk2pDbevDMNYvmKS4++e6eAL4GomSXWeZKuTOXQZ26vUHH9zEoINfX/fF9IbWv6I/Exd8PUXgOQfg6s162NVtkDrC74K1tWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772391294; c=relaxed/simple;
	bh=bZckTMmebmd9aDWI0Jh9ynG4W092Xud8qRhY/5QHgKs=;
	h=To:Subject:From:Message-Id:Date; b=PH5mDwYfx3Huou6G+rfhm409WUFZfg4tZgtjrjiRMHFx9i+KI5Kd8lTMEg34COz0+QxEuZNs7rxfgqGHcErRrXepk2HZjhL7HIlkAEGEsZA6LNuFHLfKNDu7Pwd/WYENnA1gEkeGU7MisiDou/27FJB8reebn7907q729pCEVqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUwPOxbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUwPOxbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A14C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772391293;
	bh=bZckTMmebmd9aDWI0Jh9ynG4W092Xud8qRhY/5QHgKs=;
	h=To:Subject:From:Date:From;
	b=LUwPOxbGwwaK2z7jP9fkQovR8izELkCieC9UW505QJoeF7yKtCSMVO87pOO9HdjUn
	 zS5iNZ3nApYqASBx/626qyRo5NFxgf9DXw8aFrEHo2xQFaSOIG7Ss0mMIvVU+ZFD0n
	 oOswMi5TIkVUXboHaB+WVy+dANg1j/+wSK6IoT2X3BbchTkb4EmPnCV429lRKOJ/wR
	 ikywZ2Bzh/mgpLINKdLAkenyWYX5F9QZoavBtJJZcoKk7iGpz31bTkTCnAeP8IneNK
	 1oH92lkINfZHQ+N3ht7PTT0VsnnwkaYWBOD9jrDpYMJkSEFIZtuYvTveJBKj3cyKBF
	 c8KQrbK2UoP1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2EFFD0062
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177239129362.11467.10960711468181867759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fe674ce40f6bb0951a02b0a7baf411e84ebc3aec0a293830f55cdf3d15b3dc5
Date: Sun, 01 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772391293
