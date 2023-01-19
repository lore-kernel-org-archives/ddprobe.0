Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5EDC15A3
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB1BC433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674092487;
	bh=B0vmALi7/zOBIvQw+ZQomDa+TdBHbEbC3SAMXWXTCSg=;
	h=To:Subject:From:Date:From;
	b=tucKg2wDGi9fQJBB9wk9wDePAcpQnAINcXwlfT6qcbX3YWUDJVeGNRUpXgfGRVvBH
	 LdFexcCYFrCM/apsg80FelIog0GXyQxfKqtnxCoDs99J/JGnUKfrKeP52yI2u+p78a
	 Nb32AXl0GKQ/nsMuGJoPtsfQjKYZ+n7sTFUQCkzCMb2Ko/pRMWHG40qHLIRu8d209i
	 8J0LXu8jAbIEvuN2RNlnhqle/s8qS4W+46rpi49gikAnS7Edb/e7rHm2MksUcOhDi1
	 h79GjGea6D2ivP1UL0KQu1zZd+A8q/SsqAhtloGYwrB+mMUizYYIsneNaEP41LB2yu
	 47rFE1OggxafA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FAA6C677F1
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167409248738.24766.13456063587083500807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f87d8efff9ce359947cebf9bafb3a700f83cb8b581aa35726fa1b3a34df5b7c
Date: Thu, 19 Jan 2023 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674092487
