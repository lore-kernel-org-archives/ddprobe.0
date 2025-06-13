Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E27A433A8
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749782995; cv=none; b=szTkz17vWIhX3VSTVOGACWAcbWCVxgnz3M2zz5aWE8k78YL1WknZg6fajpkA3ok10uLjLOHNvMQ2MBUqBkqf4GWCH+vYsSJ2f1J5U6PDAAsOWqorDWku3DB3HDvY/5Jkv9nSrluv+R0RDHSOtu6dBwSpcYOrWnuI4O2znXJAorI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749782995; c=relaxed/simple;
	bh=Wl0WytMv7DZclfWbcwlv6zsjt5ghf7gRu1pPAuVgBhE=;
	h=To:Subject:From:Message-Id:Date; b=VjgJ16c8Rztgm08YER4/cn/EVNp5iguWNBwxIzWcmBtW9QmFbLpSgVbM0k4360mMHinQ4h/Udr2pM798lJuiPBkRGvH5S+ede2m+PwW2YnT0WPrkWPetveKbfdba+fkl8hFeBJkafW7RioMk+q1nw7y4batvKp9sHYoqx3s8/QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hd1vF9hB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hd1vF9hB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC270C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749782993;
	bh=Wl0WytMv7DZclfWbcwlv6zsjt5ghf7gRu1pPAuVgBhE=;
	h=To:Subject:From:Date:From;
	b=hd1vF9hBx4U7lqIyeAd0sTwhssvZZgap9II/ZHkYJItlRqBlsvIsKv3BHiPompJV4
	 TLJAk7i+GM/Ux0PMfSp9pljUxwlDTN3o5jdJkRFBoUqAhs8m4lCmupLMIMzbN2ylG9
	 VT7V+HCs65v/0/1yCN2/KFo0i6Kv3LdWsjiWTwJY58pdHMcugi4g0FtiPUbdllFIHJ
	 beJtLM6YxZSUpTIqJTIX7a61zZrAUY2KLkfKIUtKlDEDKvIdi+HZ0uKwBqWOfutJL1
	 BLhImsMhF4tzDubTJoUL34DJgbHOqX8165hJHo6yzWTp4quQsjUeaGx0YLZPLmtHL3
	 2uNj1QgqEU1Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0ED9C61CE8
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174978299362.991.9285790832435802934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd0b75fde33ada21660adf5f05b461279577458d652530453b4416efcf3c0e9
Date: Fri, 13 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749782993
