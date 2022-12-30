Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4E11C04
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 900B8C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672371087;
	bh=4+oCcfGOWXr4m0wH2f1bWo4i/X5+qU1hE9S4PUL0puE=;
	h=To:Subject:From:Date:From;
	b=fP65sW5mCZDDJK++K6kCrW9cZUALcb14xO/zwo4O2cEQeTYF9w6miUbRhZ343ycOU
	 lOHB1ArXH/rVhZ4XuPyYzMoymZG509GCWQASkOw5TowBBHac2WyuyzrsnGoPI+mW8l
	 OciUDlr91Lk8DhR8mjJijUk4ZSMa+SiSPCmHFEpu/phudUV5YDn29jd0UE+e8qQWGG
	 gDMhJox3gplez9pdfJE0kxSrtPzNn0VJggj8sM50ghdECUA9/2CoZTgvmJbVxnidK6
	 J7xRYh2o7CQzBlEP2d8vVBhCu4rqVBATZk0UfRIkJQUj68tUL5LvFzSCBYjVSemjOL
	 Tz0Nc3c74nKTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70D7EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167237108744.315.16093275078038610821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a5585de9a585cdede282425ff1c03c0b2da0e1275affa268c76c54affc10aea
Date: Fri, 30 Dec 2022 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672371087
