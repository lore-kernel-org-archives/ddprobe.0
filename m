Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3558164C
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 05:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9928C433EF
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 05:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684299785;
	bh=WKtphfP74GxXCPwWNFIIKfgaksEwzwhLQ2fjP1va85g=;
	h=To:Subject:From:Date:From;
	b=iI5xDen1UYHTI9XyRxbaB6enQGLf4uit+IwDT1zT95VaA+2CDG62MpZPjNiGQyX6h
	 0+0yWWW8+AyhiQKZeN0z62QSuRrl3N7xL6o4W+ZWiRKXaNNnMDqmRgxk4Toj2wvqYl
	 vrso09J6N7M1urK+sK7xZmZcmWKn9laVkOd5jVfrw9KE3wBWK+5E4LTRJ9DrxyOaEx
	 jz1yNxnv5H7mO5n6f982Me8uAlsDZg2OyfSSQDGN2/0rqgknGvnD+6q894gUVenKGC
	 nFvTCbQPzyg9NuEQ40bTg92GQ+qml5oh19z6syR6VVfK0RqfhXnpF1QRTsNGlyT+ID
	 fP1sEjGK0eEoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBA8C77B75
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 05:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168429978577.14228.7739718399014900316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e9e4bdb1856e117e2f10fd55486d5d3e56472d1b9dc67ea678e0b9776f6100
Date: Wed, 17 May 2023 05:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684299785
