Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D642110D
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 09:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82E5C433CB
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 09:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693993448;
	bh=xMyD/QXLfgim+hdCqUTseGWho1vjGmyU/3ftHZcULks=;
	h=To:Subject:From:Date:From;
	b=anvKgds6CkGQDVS0F3rtIcPxb0QFa7IVezCMxYzUZuI360JBa9xGXtSSov2NOquvs
	 nvng/bq2lFRyBBmdKj5+3h6kECHEJScgzabVQoOy9QflGdFl4y2HLS29VkWFxz+jhq
	 vz4XNBpxY35RW6zvyQ3VjcyVF4CW1r64h9dSaqa5fSKRs8548E4o5eOEB1sl5cPWh/
	 BCYbmf5Pok5AOKaszSktOhBo+5mIhdB10bdGaV8dls89IbDW6IbaC9Gxfq5ZU8Xn8O
	 bQi3UvtWiZdfZiMT3tplbbte4a4XZRWSdoisOVK88rUbMmpYhcFmlK85Jch3kNUKgJ
	 y4Ov90JGE0mWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A542EEB8FAF
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 09:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169399344867.6931.17074126148261492535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa3383a53fb9c8b4cbcdb3f5592ce8818943a3a11cefebf00ebace423bec9382
Date: Wed, 06 Sep 2023 09:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693993448
