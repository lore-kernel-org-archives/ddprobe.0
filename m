Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479019455
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 19:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9CFC433D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 19:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680205745;
	bh=2e09+yj/xDOYRYMLPKDqw944DxacJdkBMpiwok1aKgs=;
	h=To:Subject:From:Date:From;
	b=D8IrvgEefbAkmNaAZ4YHHLpWXk+vYl/Ukpiya4tgrVR52dRYeZ7yaCDfTCq5ovKXq
	 O8UbU7f1PpOwSzTWiCv5cb0oj3X+8qWRI5muorFJB3x+8PI0rajJF4mBMe4r0YmdCM
	 8lCbAclp9VqWqeIFrXvh/vgiQFSWSeX+1mDAwY0yN1uSkSYS4BxSPdiSy+mspXrGF5
	 BIVE/EgCbdW28h9/6Gr2qo8XFYH8SSUgPBcWhhDyW3WiXXXL+lm/5Mt9/bm0zX9cXp
	 ehPWCtLZIm7Q21fokGtwZuYTpka40pFSFQGm192IUzeJ+yCJp27Ha0+5gvFcPF7l91
	 y+xByJfnXahxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B3FC77B6D
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 19:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168020574578.6483.5662583770872310884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31dfc1b623df207aebb375762c44a822442e05053d692347772010b2409b1d31
Date: Thu, 30 Mar 2023 19:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680205745
