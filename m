Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A836331E825
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778360254; cv=none; b=mI1idTd0s8aYK2lBFWav5bTNBLa/y2hOKykoP5W9xRBGf5xX0QD0dRen5gRihJ8/KqHEIM+8kH0P1g/tlzrYZRXhfAmY916jS5ygugH8UcBUAn/Rr6fXfi/TG9myByjGwkooBcBxkEuZQMNc1loY64vRBhFSjzbgTk4a6/8sv44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778360254; c=relaxed/simple;
	bh=tuYpMr3KXWd6zKQvssrHHAOPMt4AATTMwOH95BC9bto=;
	h=To:Subject:From:Message-Id:Date; b=TlPPF0vJXV6o5r4J/vPQctGA6zkEgKjzXXiUHKZgNSej90iiPWinyuqSZjZmmqCTymq+qAiUhKgEUhQ7uKVdgmkemKGjTIane4tt7nzwdZCJ1f2SzIzuLWpOMdu+Esa6tneoReAxS91tWsDPHJcoG/NY/aAWkSMaBND9T+lVTuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZEh7t8v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZEh7t8v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 56C7AC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778360254;
	bh=tuYpMr3KXWd6zKQvssrHHAOPMt4AATTMwOH95BC9bto=;
	h=To:Subject:From:Date:From;
	b=RZEh7t8vXioqZYX35hyt5BexVNUaYWkTPqgRv6sX2x0iyWWkddPInWGNBrkaK1Tmu
	 eptqRXxxFWqYBs+8iKLdtk2aaHGeqE6JsFGIbC3JZ5gbs1Si/BMn8/fU5NJDVfLkJa
	 22bgnVHELobzj/HrZCr6k3njlasmDhm9JSiAmqXmEId1+XXRHR8nfY/geNCJELH/ZC
	 UC0RJfuQuP3fPZKnl41n/JwewoqTe1E1auUkaqE8GgVlrcX5ZMqMrYt8JWkPw6FkXM
	 qo1NA9s6JPIuVUFWoVYANTPFR7xReqCE/j3JY5VZqRBhsOOrKiuAzKvtIUV1W7TAek
	 huiaGxG/M2K1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C56CCD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 20:57:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177836025392.6498.3282163967281006807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21d11bed2ca3f5445426ec3dbee3531122afe069dc3b124dafc96a055611aeba
Date: Sat, 09 May 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778360253
