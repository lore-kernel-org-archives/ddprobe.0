Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740C47EB
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 12:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2447FC433D2
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 12:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684672926;
	bh=elt49jjS07pJ1UiABCj/K0XKmhcwHFB+v1PfuYvRp1g=;
	h=To:Subject:From:Date:From;
	b=Ysi7aXjvlpa18lfDFxOjAphDkFbcOY3jaZP6mlrGaCZg1B3EyWZvnfgnOCNg5fjtp
	 TV6gLGsMs4o0xJw5m4geehG7lGXd+6tWucjJpg+sqJ+EGHi7W5/zSull2TJCFsI4xK
	 i0uhzhOdk8kZ09INgiN8rrf4qfJsxsOWVDQ1bQ5V1/sH4W2Ukjv4tmjmcIyc1Kkkfp
	 Smd7iYD6KHoP8cP6uRvogGyVQ3I5Pk3CDGb96RT0d7gKwqwMcbSasIHaczmn/D2S3+
	 tAKZy7xmhj/G2yVSGMiOLYqXDrTYdtQcte1JrBTFfABF/4EkUfy/uNthGl1GLj1EcS
	 ogE8xbAfkO9ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F16C1C77B7C
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 12:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168467292594.6870.1446995283736307531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65900c020da6f6af5cc644180a62b70cd7346a01c260d76cbc20e050e89886f8
Date: Sun, 21 May 2023 12:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684672925
