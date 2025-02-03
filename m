Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA9B1FC7E1
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738570554; cv=none; b=SSrGAFHIXy9UkDQhjFfjNrDzFXWn4X4a7covMCBLtwXQ7doVI9C4jeJt9jZ5Sjf5IDGZjXn+B/MzRyB6aLPFP9gMWzCuj8xPoT2346CDulnhqvC23NjS2cAdQdyxnc3O6tXv4BDePX6VL9B8nuRlzfJX5F7mPRG/v+c2+z925vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738570554; c=relaxed/simple;
	bh=QAtpXd+os8B2ldnLHAyaATZJAGeZ1LctxDGtdp2Kwm0=;
	h=To:Subject:From:Message-Id:Date; b=eu5oeDsKMSnPYKcu0sQrzD/bdt1laxY2VZdEmX8S7t7Z/dnTVBKnfmLOBxVekQ4qbzvgu1Si1DwLP2ofIunlnzsr/OjE1NSBCz8D5Klq7VO+B4q8lEwwX3kgbJPUvzNi4V1AM0FQnUtk7cS3o+rxNSb90fo5OL4uFSoJPE+JkyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPU4Lm7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPU4Lm7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B7AC4CEE2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738570553;
	bh=QAtpXd+os8B2ldnLHAyaATZJAGeZ1LctxDGtdp2Kwm0=;
	h=To:Subject:From:Date:From;
	b=XPU4Lm7iMZUnNSJGtxiEXKhTzCACU1PLAZC+DJWLEXsoX4osqlT86hivIf9+N8VDc
	 OLLCqg79Dgsyk++8FeVvncwsjLZIciPp2pN5Q40Br5/dSzo8C+zf4GkBDME+apyN5Q
	 OjwWvbg9YI55IY5fnQfq/L2fgzhe8Ow2vNm5PVOP4rsJv0NxYtzxgZhGmRo095Ha+a
	 Jz+TK3lXyoHHpsoEByi4OVUUZmo9z3I4OBb5YEe+/fC+LsTSBKZ3Im4oco7Hg3cWvF
	 bH+usSr0mfszqyr21aOoI9cNcQwTROemz7xjP5Z3OQEqCG0h2dLJgENHq0h8tMmu3c
	 CPl7hqNZzNxDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF42C02193
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173857055363.23427.14239375881211926779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357b09af052866824503526e411774cd354847498984e10e71348599deafaed4
Date: Mon, 03 Feb 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738570553
