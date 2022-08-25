Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB96E4C87
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 23:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B941C433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 23:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661470252;
	bh=y1Jn9Ge6X5VfFzJgX44+pR8zoQ11RsIr1ONaAbMg9YA=;
	h=To:Subject:From:Date:From;
	b=G05JH7Nwoa+PSckpvtjYwUDTsregPbib5UVCd6r5PoNCIFOkFxoDzN2jcoIiq0DTV
	 9QCBhSZ3SSKYHaRBmzNt0UwiRf0CLMXXItaTH6wQ9qIUeNJWFvmaUYrnfYQ+hG5gjr
	 XSkY5mqlmSTFQaLnmfPPJKnWRffIvhm6xyQQbPPcd/eeclLg4CuudE0hmAWqkp5Mt0
	 O8n8aewRQFYzjPyILsR3WBT96aYSVWeKa0WBi2e6IlFIc3N+aRRVaCIoM/+WLeOVZJ
	 rkc4/8WhZCNS7DXY5Hku5v0/KrHbVKtr4tVVE2PQqnn85d2iae61I1xgMMItqp3a46
	 5snJIEkgk31zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57763ECAAA3
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 23:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166147025234.8507.13988611982380648984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd1e0678514d3fcff9ca40ebf2883b1f42d44863872d0ac0469aa2136ef8130
Date: Thu, 25 Aug 2022 23:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661470252
