Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D01250E2
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 23:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C255BC433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 23:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694648648;
	bh=XsfdxFkKS3upvMKb0iyEVwAN6W0Cx9dM/ddsj4vAwaA=;
	h=To:Subject:From:Date:From;
	b=NB2UtY+174b2lJMtmzCm8zAqjycq4A494yrTRi3Y7ab1I7e1iK7SohuICzWWRsbLN
	 TcOUToqoNuQ5EetCb1Oar1g3rp63y+1+rYeQXOuU05Ms/ZrWp/GdwHQOLSNGiyfd+b
	 X1UNAGycD1/6pWyIRKiKJzNw0l+YTwsLuuvlbrrxaIeD7hmkuZ/VYDXMqqxvGl7wUT
	 Rz+UgJgV25aqSE0p19LXDOHqe3R0a9JzikUrpIvFVNGomyWoT9KgvCu98PWkyqRcbP
	 gegRa2vswpLHwyKg+wkAvbzuNXsoA5KREi4bOzxY8HSMTCbs7JpOEWTbVOfpVypvKV
	 z0q/LJe7icPRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C19EE0211
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 23:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169464864866.19055.13028779618247822103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9826b8e3c173df0f30e84a3ca8e9ca02baf3221a230715e591953a3363c2412
Date: Wed, 13 Sep 2023 23:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694648648
