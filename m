Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E16411FB6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80414C433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669272654;
	bh=PoooKBfuWD0jg+58FeoSAHJyJIadwgpAaXq7pJBudPA=;
	h=To:Subject:From:Date:From;
	b=bOCL8qZUUEW2SPzfed52mY44TNQ5HD4OWa/5Pmk6TGJDB5KsmeKnNw9WzJvK9sux8
	 xZ8rkIx4/a68cbrIb1Z3Ue6REfNr14daILsFXBAcPPvMfFz9xYO4IFqdXzOcOcJweq
	 NCdgbYNh27fsZT29S9JLqK1b+/IMuc4gwEu56vUQ+TW1Wy8kIoG/6C+SC4/4XjuJpA
	 KZxh1f0MBLsEXTwK+eeyrFYLxwVBSCje+Rn+FZdRgp6W7S5zhLINfT89pveNPWGl7X
	 KIOlB8wRMylz0cNYuhs79lm9wM7v6ZcAHcxTS93Me6YIyQD1PNCpjHCbYFjHO+jAVj
	 0ICSz51n9nKaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 639EBC4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166927265440.9027.9179044738731842226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c087851a78d8b464b2ca6abf5562c9a4081942903bbf262e21407d3eaecbea0
Date: Thu, 24 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669272654
