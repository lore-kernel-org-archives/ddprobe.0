Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BD281B7D4
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 07:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74D4C433C8
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 07:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691565788;
	bh=Wq1NNeM16tFKfEd6Z+ZA4CRD2yV3GDd08Ng/Vrejbf8=;
	h=To:Subject:From:Date:From;
	b=BFcr0QvdHXYUc6yjYlL1iXE+dGMdLhy0Gf6lNImUX6N4oYuBl6gAZOisi0JIk9uu5
	 +M9dJ05xdmytzYyhO8+dX/adrLANYg7GBWYr+FNFfOxxwaqV+xuG+Ut6xkLJnFLhyg
	 ZkBp3b3LrZiwQ+AeE5u8goDMD93OH7SdzyvSqzg5Q1t24FENBljElId4aD+0RnQHBK
	 z7ErfTDpr/4cjg2vYbI3+lwiyVwzw3GP+EToDTtnvKi2RZ0R0efaX+RtGIMn9sB6l9
	 lxdisGPOgfbuZ6pJH0YIALILQk9fdM4KYwOUHATlWnFw+rEES1neMhWtyRRFlcPbD2
	 pMumgy7dbw6Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F18EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 07:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169156578872.12050.1074745095686469460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f75c610ff94ffd11919ab11a14605877ce99c556a4d2d826dbdd1c81ad41b0
Date: Wed, 09 Aug 2023 07:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691565788
