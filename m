Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1322F3D
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D9AC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670596887;
	bh=kbY2f3lIr6CAetWw+BVkfdufDHtE/DEv0+xkItG1qqU=;
	h=To:Subject:From:Date:From;
	b=el/w6NS8EDsJi6u6+Lds6OIE+8oXl9gqKw06Vv05bwSKRhrT9c0lQGhHDGEE3pw87
	 4FyNwRrL9LJ/w4FyFfFDhec4UylTFlRUbIN1fxBr3vFCQJD8JSE1EMG5TBX7HfEzuV
	 jXOQ1pSQ0mAlKRKPpMZuRdIUEpz8zpDKtPHk6ZnwlC42P8OVOJX8KnUzeXxyVrEPHG
	 q5hg37tRPdtXdTLet3Ij3E338jgqtZgHGH6xPv51XQbA3CDG18C1iaIjx7rilKMqlB
	 pC9A1NBvJdQMK+dDI2JL5eZz47MNx0LdyfIZcNnDMNdjeQMJCFF7HpsaflN3vUO6p2
	 Tt9hwKYGytkRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E2CC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167059688740.25801.2014788076264558235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2b273be37d8f0c94509584b2d57978afe8dcbaa05880f6098f1e12ca66f7c35
Date: Fri, 09 Dec 2022 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670596887
