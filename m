Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E12E219E8
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754798394; cv=none; b=E8XkbC5N9udPXIQWh4DzKgviiTExvyd4++OI+uN5SjxB1UL5hVpqCVN0ewMplaPtNlux/sPubYCBw6y9tcdESI6ZWE+tcsiYCzbiNIpGfZLHhdJWGqwGBc95ZY3r3GPaGN4sXHGLl/5V0FLitw2K4lyo8aWpb53Sa81Zh9Fz5FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754798394; c=relaxed/simple;
	bh=FsJT0P9dyr4vecqCWn5g1Nq2aK5z8i7557lIjQSg++A=;
	h=To:Subject:From:Message-Id:Date; b=lVneEBJr1LdpIDFPO5JXNXIQvm7HR/zaM7ikWbwZOT0ImFiZ1/UfJHuZz3No/k/pEU3E1Eb1FW+B60GSAAgzmEluFGhkwh/h7FaHe4o0GwvhMPly1OR2y8z+fKroaUY7oFXgGh6fV1bTHn03/rML9SkIwYwJwB4ZMYTMfJjOTGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRf0pDbB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRf0pDbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36B2C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754798393;
	bh=FsJT0P9dyr4vecqCWn5g1Nq2aK5z8i7557lIjQSg++A=;
	h=To:Subject:From:Date:From;
	b=GRf0pDbBzPRsv2bZdMSsMXNZV31IgYkKPF/9DdZmZ7gMvCkZ5lVFXokwR3SMWcXSa
	 uP64vmQfRSnVvY/cApgNUjc01qaqmW5Nk3JqS5kh8nNzPyjg7xEBPsMDMcSnfhNlJW
	 TjTtVSmiUpVkYP71YIYgo1l6zInO54ZwQyz5X9ZZ7XsrKCb/uTKyu65kjjgolzIWmz
	 G7TgzZT3Hb2ElpgqgjaGDbUtOsF8QzaZ5fWWLGBuFiQZElSz7ZJX/9Krskmuc52p8V
	 Ntzcl3r7UxlTLxkRSEw9S7+FjLv3riiamBmeu8AFa1el8EQu4cSn0mt+Y64nLaUzmz
	 cF8Yxn8JzsZAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A0FC87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175479839358.436.16873748192298593855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d801f135cb3c37e727bafea6a84519b9131cd1e1c9c1340ccbd0ba8830d9a777
Date: Sun, 10 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754798393
