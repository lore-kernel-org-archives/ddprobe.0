Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC07B748C
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C7D0C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670953287;
	bh=x28QDLsWq+rflSDmTXiuaCHnzDySo8Pe5gRPC7P0Kyg=;
	h=To:Subject:From:Date:From;
	b=h9CNV+ITnlzsVBWUPeclP8I9T8F76DECDVOoWIF53jcJoHX/mW8xg5jyXK3HqjjpX
	 Z9GQvh77xyPSGqh0ts/R7bedcmRd7dnUebJ2HsfJ27uNYlWX+hOqzmX/2B9Bm18NBl
	 wwxJqv7rUrsMZl9zpsZecM0LyWEgcQ6B1BT/xxitx/JqeO+foZThMMPXI2evaGkcaN
	 XV4zXMeqYPtEF9XRpicom70aB2jY+FAY1qAm8uA1AXIWTR+tx7+8WJtg0898l0psuO
	 LbMXjSKH4IX9xACuCEL1j6vdskZXNqrHB6OJjHr/BABxzhdegGrQ4IAp8INY3DMMto
	 mbSZ8CJrkwycQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7468CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167095328746.9524.17901793039905664284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4253953806ee0415a60b6d3fa08a3e1eaeb6b0c688f3a3f4d3c7bfc79788bff
Date: Tue, 13 Dec 2022 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670953287
