Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D247FC0A
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771739694; cv=none; b=sL9IYZkhIARA5O4cneJb/ZHLJ6ECAzTYm7EoKVLOTRfuImBVwtOa7BxJustwO9oB8u09YTCcFDfEPXQo9XMnX/ZRtQW9SqIFyIaU6fAoPOfRmf0aOWgVK4FXOR6sqhIkg8tTviaFiAxNjwnZtwTEehBC3LhXyVpRFhhAMp1C/rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771739694; c=relaxed/simple;
	bh=N/z2nMrLYMgpwvZQ2+Al7XUK1oSLdt7K+2Gv3S2ivOc=;
	h=To:Subject:From:Message-Id:Date; b=U2R1wpXErBHNrimGWmumKb8aLhf6APfrfnXvN4uYHFyRlM7cHTptmppXS+JS3qCHeokPsF9IT0tcviVsHPVhXYhCyEX42MiGFxshxu+2/tRNtomlTEbITJqs8qb/+UwnEZl9OD6x8QJR5HqPyBKeqyFfPmQ7l4krmBWHKqIcEfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRIo3cWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRIo3cWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF16BC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771739693;
	bh=N/z2nMrLYMgpwvZQ2+Al7XUK1oSLdt7K+2Gv3S2ivOc=;
	h=To:Subject:From:Date:From;
	b=TRIo3cWA69QDzurFNRBnia5OY4z/qDzjvJ+IPyr9a74uF9yCRNbvauvo12TLHefyL
	 iRXrAUWFYvrB65j2ZIetxHAo884cNBk+goXk8TEm6YIz2Za7M8YPVrcVcVyuzFQHau
	 fo0YFPOSGyBmmpXv88iJ4VeThevVpQSxPINOxZ+qaCc1Z8NdZ9gfiqpljDPVIng42c
	 hYVdSX5g6JVN/5bAWUD4WRjQ+++x0po0HAhz7tnG07sbFwkXYed5rtddSbWmK2DaKi
	 sB6Nt+E6MGy4Zc77VgoegOBf7u/r1rRLxgvgO7d+QkHoLzIbKyWJ+Sq3K/ELzoYGtL
	 8yJz0/rzZnLzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EB5C624A5
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177173969360.29301.15506165433616576892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828bc00c89a4296ba75a72c7a87bf789b654166c9df50905150c769abaf338cb
Date: Sun, 22 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771739693
