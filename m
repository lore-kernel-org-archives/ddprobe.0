Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D80524505
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 18:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C66FCC433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 18:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691607188;
	bh=wolDIZIpjthXGyJWbtlZCksracdjWRHaZ4UTB0XeSGY=;
	h=To:Subject:From:Date:From;
	b=gPkQDxN12Q4B/8xsyZvkHkvLGlI+okohJTHfJxLHTHTEAnJVJ6EQa/0SM+sBN4dpq
	 LisdX4ZDz5zgLf9s476h9eyBGIe5MpxA5ZLiPmX0ixhH8/JJad8AqP3HdJQHsHkBP9
	 JFLVlH9uw2vwzJOGPhDMTSlIwBnrrvqxP07Rw8bexfRzdqvmqpIeCrwPEIHuK3bTdB
	 nwwc7inUATkIo26vPXluD0wHg3GW6zvQrnOOCoVrtAi2HOOanwtuWpF+3DI3stJK4O
	 ewzQVFGlibN19CsJM6LAUfv7NpMriaHmMV2LQapAzawCQx9cQaop+i/dNo805uStBs
	 d0rK2DmPycL5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2E9C001E0
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 18:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169160718869.3026.14694861226012933597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7425d08452fc02fb6760f7e6282cb401d95247ed21a54d47d856ca6bf923977
Date: Wed, 09 Aug 2023 18:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691607188
