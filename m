Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E2CDF62
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 12:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716640463; cv=none; b=LtHaUmUVsrQYRQmeZXd/uCkW0TBzQjGIzt5gs92/s05kKv5emn6nKD7ZvaUdMzY1FGFFdwF4VWUDySC+yMbDOr4TD3N/yUGfUI/HcD8sG2XS9CO4KLGeL6NIK+DFUQDfUtGL9D6WqrYf+jG6ZjWp6N9KOlbN1TlZSabhikX/Fw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716640463; c=relaxed/simple;
	bh=dKo+B+cAGeh2wekou/tk/PSb0kCjsg4dbw4fQeE2bZU=;
	h=To:Subject:From:Message-Id:Date; b=uOHWeuCra1ACoKwhfTUhzlfZy59hUDV3+x7KoZEboMuz9IR3LcSGtxw35sgdZhlGhAhUwDJrKNxFi1QzWg1jtSLNue9QrcWjLqgI28FtyJxiqtH+gR9SuaCA8+2oM8SZ0uoOK66I+4u1Jt8McqyB8cDhJC8U2ToU2Ii7D27ltes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGyAIwRj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGyAIwRj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79C9C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 12:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716640462;
	bh=dKo+B+cAGeh2wekou/tk/PSb0kCjsg4dbw4fQeE2bZU=;
	h=To:Subject:From:Date:From;
	b=oGyAIwRjD+HHhrfEWgRIXrQxdTcatMGszH+qaHYu8bxiEdHCnQ6S83IaYw5cQ3wh9
	 hAErYPxPZEijMsrvL7cvF9BnU395RDT3u1YPAYoBRFKjYIHYGNra0KCPeJRi3SkkuL
	 l8yNiLAF2Moh0h/f9BKrG1hkPT1VoAlUweJkoBKG2p0GBWB1Q2g4Z9fJbILy4YfVCN
	 onPrByhP2ZIbQX4FnSrUZ3ld4B17AxK6ktsZCsEu+JqyZBby7jr6Ej9tg5kY6YJOoY
	 LNW28YtBYjbQDQclu+KJrKKwtVq3glQiwe3FJP1Ez3+vjz0XGrTPHqVZCc/I3NgN7j
	 jYuyIVRCMsfkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2846C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 12:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171664046276.20150.9714177671672724494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a8fc1c3de2d96a3a1001e31a69dd4031b7d96faff74a1dbb45708588552a359
Date: Sat, 25 May 2024 12:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716640462
