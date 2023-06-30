Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCBC8820
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6115C433C7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688165588;
	bh=77umkVm38DsylvFO/PkpthaxXsjrnSQZQ6yU+pBknn8=;
	h=To:Subject:From:Date:From;
	b=Rx9u96/cV6wp6kG28IWc2+fq8PgZdrO4jtSN55x42MqPMROXG9J+x+SlLND2olAPP
	 YXmHgcDxxYd3ID1eZj9ByW0DpI3VlfMGXeGZBz30mq4jlY0fVpJ/nP7ewAybXPb6sB
	 e/6bCBa+s3MwB82QuMymfd+7LiLJgublU8fThi1+uSq3zRU5GByvMK8tGvRMpG5ZI5
	 QLVn3ygzzjK6e03Xbst02PG6IfECnPAwng3fn9UxGWlKirD8NVW/XOhPiyFEiTFHBA
	 xgCF8yWiP0UI7lGNF/9c7LPC+nzrNTs8HlOT2cbkL1bMyTsxVcDt7fda+DKxhnP6R3
	 rr0X9NcfkFe9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11B5EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168816558870.19976.14434947258285941508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d05a2aa317adaba82804f9af2815bdd3cf915e97c4adc232f4073d1326bac106
Date: Fri, 30 Jun 2023 22:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688165588
