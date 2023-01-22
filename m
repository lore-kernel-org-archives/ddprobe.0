Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A63E1367
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 11:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF835C433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 11:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674387126;
	bh=8kTaLApqlLfqrufN5ew2RPgan7ymcYjcngvG+CR82qs=;
	h=To:Subject:From:Date:From;
	b=ZPmOc4xbi5TjCAkRpaaY5cJUU+LVg+1ehWXZOHnOSC51TeWlGcoF5O1GGvrAAiuzI
	 8EbJw6xLVfB18Qa4RnSQTdhAYmhRa2J+ZJODOqmH6jaTyyKFA618wZuThBpw1EIPZG
	 AIBRg7cp8Ik1BgaCJKdBo/pl3lcn/5g6OaXTuZCRR96ckyhEorAFiQjkAgU3Xu4ABk
	 fpbt7YtBD5sluScc0tCTivS5EABzMKf4Gawhmf31GQmy+G0WLvNscbfP3X84fxc8aG
	 OYA6OthfJZtFZQSm6oKpbphV1HnPfAnMNFZ0CKjfDgFUEJoErspXT3iBjAM3o8IIAr
	 drEJ3TOqbRplA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB620C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 11:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167438712578.15610.5243308824449503934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4afb8ef24eb8366cbbc6a3463daa9da6990d627d06d780b07e9d225cd0096ae
Date: Sun, 22 Jan 2023 11:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674387125
