Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8706AB6
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 14:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0264EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 14:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679062866;
	bh=3CuyStV+8bekwcxpFkzZ//Y1XE5wO/TzzfGNQmlhRcE=;
	h=To:Subject:From:Date:From;
	b=RMO1QWD8bqrd596Fe1MYsy+MZO5Rgeu8XtGVYDsYGdtQprGfEhhTVU0hr5l1cNl+Z
	 yyeeb6ndC5oVzKE8IrrTj8Y2GDO9nFyNcfv8GGqGdhfAxiM5QPJoDb6Pu8KMnGrhQS
	 +hYFrijY+cP1KVx00nWFT7W0BoO4iWa5oZDVloYJn+WhERV4euYYuDMH1CgxdWqvyu
	 +lj+9Jbmj402LPBWUxB93JNzqoegIvDhEg9A37QmH7ajz6Z1OdJMUp5sv2xnyzYutQ
	 MIyURaTmbhHB6EIimM7hqlZ62pqEILhmcbU5lihubuVMAFuDBAzS8SlpMFc7nEgD/E
	 qqmIDIVrJ+gPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7A5DC6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 14:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167906286587.20833.17874831835141073128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9b0d27acfcfb83a673ff2e069c9526ba3a6ab2d1b5829a609987aa94cc8bcc3
Date: Fri, 17 Mar 2023 14:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679062865
