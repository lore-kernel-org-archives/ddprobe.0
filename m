Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB3A15D0
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 04:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABBBC433C8
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 04:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691122388;
	bh=lfkEPigQIeIHvJ3XEjsWjfaU+ru4rwhV0AD+6DTm7a0=;
	h=To:Subject:From:Date:From;
	b=pUdFmSuURkbmpaCMe6g+QhRK8eZLR2reqfxwd0zLrJoJwA4P19dq8bK/HmIPwCpit
	 7qHcsNKmilM4X1Qkpx7tJAbJgSaKqqbi6+UobpQU+uyRHam6ZwSZbf6vx61oo58URH
	 rONCJ+D6shhd/n0Xu9qMV4XCHQuooObiZmvM+gknRSFM9hac5+6PQRBMRarY/tHDXX
	 ZMbaHZICOYI7EGmmLSxPbYX+HB0v4IIHq0Jm9bm3z0BDvHcA884JMuK1uThM970/xL
	 Opey2lGAdfCLkJ5wmVaCN+B46oJUl81yQa7Qi1F55yPiN0RbVkluH78naYIThE/PcI
	 aDCO0qGlkeciA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3EEC001DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 04:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169112238867.6298.9815542047977968454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79e206a5581b987efc4eddf89ac0cdb878fd017642c1b9a2cc5aa21444d9e78
Date: Fri, 04 Aug 2023 04:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691122388
