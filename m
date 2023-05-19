Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368D28C08
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 11:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA54C433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 11:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684496885;
	bh=CCjHAY8P5FVsAFrZyN+FErXLhFdCLjjiTDHJmQYb/iE=;
	h=To:Subject:From:Date:From;
	b=uUK1UpqVMzoso14BYZkiDAEdsLJSfr4jFja1mMUojegb6FJxunelPUYeefnjWNHZL
	 u2AG8q+yq2QHPZuBfvLeFuXhJHBWQnJp2FDOmoQ96XmJ216AbO6PUf7bx1ohq60rgw
	 PvG59MtCzLPT/ApPS9EaH/QN0ayG6k7hMIe8gsozyxoK0skwOF9TmLdZQkeEnlCGgH
	 5BleJ6AbvbuG216jP1rOOJg/iW6csl//kOXjVz7dkgtn3UvcL2wveLlT8bH7CoWK3I
	 qcChx1UGuCs1AoEhJHzdTIIzT2w+OA/OL4rkMkVeOc0CLqKTBpOxQpVTmqG2gcV28y
	 zH8GHI0qmlZUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB595C77B7A
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 11:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168449688575.1916.9726395177049191714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da51d00333c1a7a64c77ffb6e00ac78ddacc58056c49757800708a5760aa183
Date: Fri, 19 May 2023 11:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684496885
