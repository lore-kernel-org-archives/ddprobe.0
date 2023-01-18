Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D356B2564
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD1DC433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674029487;
	bh=Gh5S5PPjji2hRTRopPbT1PYJCgOVflKCKG20Q4L03dg=;
	h=To:Subject:From:Date:From;
	b=SCF1iQvz0eK4CZO1HCfqbf+/dMEklWpxyFOE0b1PLFcXmbajg2fTONSsED3/nyKFM
	 fGBZov+DLInA9NqqFWIVl1ZvYdnuVOoixZWOY3BEm4qdE8yPB01EwhJnRl6jjo3UW5
	 kaI2QPe/Bo6MmYqOmw2Mj7cizqz0cA2fls0OBMigQfnSOnhz1SqIh/IpsezsZ2PC4A
	 cpCQt211ft4xckxwRVxMRiJOqEhBctHxek56JxEoXZeqY3VVifL2UiS6fx6Zzdtkt0
	 FhkLKPYEQQ8gzpjGsf9dTyltaH1WXMJrC7vD6FMBPPcApR389agfZTknTC2EoHNmKi
	 zL0svFIfIMCMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 629AFC004D4
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167402948739.15172.18033541532432452444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77509716081a403333af907f534b8f89d6b0c99658a8c555591c87dbd7f7cc42
Date: Wed, 18 Jan 2023 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674029487
