Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7BE3214
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E01AC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669814454;
	bh=9x9TYmBhNZkVm+ykK+vY3M8StvncjyCB4Sp8KYqSue4=;
	h=To:Subject:From:Date:From;
	b=OZkEivQy4CNDHhcOuVzIX+GNXHRLy1L0UKeuQ79Kw4cY6VYsCGodi4TZ9uISWr+fZ
	 L2V3LmeXBbBJnfCZtWK3Do/YwDsMrnGMXCBLJTTAeaMd6oG17GBNOeuwTlpdZpV9M4
	 9Y2qxMDsjIBt8ZcTXJgkWtiRlFUfW+O2Pd44EupKmaTH8F6vyITMenn4r8oVZXCmJF
	 XzVvcJh4AtJt2ehqgXFE/nUeftNZDoK+g4G8NCwekp3waDJUhT3vYMV1SdBGq+T9YD
	 XCaY2D+elDEDUDdfl3ZxdUFo7S/NRjt6sJSj2gAOU7RJPBkaeKs80ReJ6llzADybbq
	 nyalbJ9MDL56A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C5AC4332F
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166981445433.17281.1928557897954679858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 189ff0333b30bde5fba952f1b3ac2b4b332376e6a25efb7885c9fd0bd03e6888
Date: Wed, 30 Nov 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669814454
