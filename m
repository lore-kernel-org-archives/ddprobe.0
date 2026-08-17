Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431A43B42EB
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786954234; cv=none; b=CMDjDm/UQpXYxiI/BrMSzn5DqA4EXW6w6WHs4VilXW7fKjKAQd1618/E29TmfKG/pdg9t/8VC2qsNirX4j6y7xmyrOagvapBgXxNZc/HObtFAqJD1psrFF+iq9ZwUpavSX2xt1ihpeHnhvSOf9lpcocjOtewV5u9GqD9oz9tBhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786954234; c=relaxed/simple;
	bh=BQxbgsavl/nb8hxB/kGOrO+xN3K5vfitaXULkHTk3vA=;
	h=To:Subject:From:Message-Id:Date; b=JQ+pE6PSC8ywZoX/ZnqiS5yaqJB9MoU5eNYrmsuqklMYrn8vukhVIAz9L6f4HVAFZUWWeVzpZiteZZNSVFoSpV6xWog247icrN7qsoKi9fLoANbjBInUwQurEnY71Tn6YJ8GcIwrBn31QpnxzHQJVfdp0TQXG2fJXesoyB3QW0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkKuof9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkKuof9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4A1C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786954233;
	bh=BQxbgsavl/nb8hxB/kGOrO+xN3K5vfitaXULkHTk3vA=;
	h=To:Subject:From:Date:From;
	b=pkKuof9WaRxB/UwS2OdRulCHhLA6mKWHMd234uWyDghA9WaZ9u/vFT/ltBbbolLsE
	 f3ZlV/xtJs79VPSLAfoyYnjj1GJpOoxaJnlX8KOS9IclGjd/FshCroj1cS0EfGEJNJ
	 HqrHwOVe62VxjRyLs+8DtYlqZz51mPDb+7k78zzmgJwTZLmnQoCE+NpN3BoIhrwLXF
	 9egrK1aL1ZKGdWMXFdqsuyzyj8FTk8VybkUdTGZCYIL+QVfldlScZoGMnMpXkLYDI+
	 4oeH53O+mQD5sfy8wQZGHUvT2cCFavm7kLUYJ+aWHnmN+f7A2DjhvUMF2LuabXE2o0
	 Qgz/ixd6NLGNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5306C5CFC1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178695423373.24019.12396279097243057839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e738d75a2156162b6f094da05a38e1ccfaeb222013020d091787dc4c741554
Date: Mon, 17 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786954233
