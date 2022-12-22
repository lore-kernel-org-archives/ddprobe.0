Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB2A5CAD
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80944C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671716487;
	bh=Jlj6BRg6w2xVhivZNitSuRR0ZUwwf8fSfb2L94Jg914=;
	h=To:Subject:From:Date:From;
	b=CwQ9r1/Xu6m0XGOhcVvQs5i6hd3iqdgFeW87rGjNVLql8PEs7sgA+RtD41rr7DUU3
	 KQC6xlhfptY8jMLxbZgeaALJZfshtIsXZQqnACLwrnOyFwdMl6/GotnIDJNUEowIp+
	 0H/1cN6QeTqPQ5L27K9zna0643K+ftiOjGFkWD1rnfzVgqDtSK1xeWg7CR/lLEp6N4
	 tehMfuAT6e3477tohR0OcUK+ZahOmMo6PbJYecvW1xNwbYM/lKg/eGQnd5+okw2Syc
	 XodBWUJZvTc9X/bM4mcVHbHF7HhDuLO0yEiOvOyoQvRY3CqBb3QCfkjdy5kH6Qz8jB
	 qAj4+pTIQSnSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6720BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167171648741.31617.16497973914459252539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81a401290e2ccd592216a816572deadd73340eba25d7e553af9a9e911ff7c1cf
Date: Thu, 22 Dec 2022 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671716487
