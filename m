Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A2E33D3
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC20C433D7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670512254;
	bh=ze7ynTEx9BOnnAF6w1kSbLvBTwEMBHrpPDco+DZfo94=;
	h=To:Subject:From:Date:From;
	b=ZOkFyDZ3JqA/zb7sMZDsEli2WpDkVriBiq2gQOQV07NY4BUZ9XYrGqiGxZWKFL7gi
	 UNcgP43ILwKBKAFCIk7wApc4uWbekc3uA9zZxQwKzSZNNe0P8KFJOX8l5ebQYL5EeM
	 KDEJ8QVurhQJEE4J86qv+Dx8AGhag1srmHGvhTeIY5RaZmED4j94Uk0ubpJOpoderW
	 NY2O73nORgrN+V2G8YpNz8ebthQXOJO2cg2zYVCyzbsGV3tdvjUbZKTpsv/sHfOu6O
	 YDotPDMQ9J1yilCHIibcSyENwwKjgfjFzC5nVvIJxuksOtBUPaw9c4SxdaDNGb3M2b
	 713zhWKTqYmXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5383DC3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167051225433.28392.11442949811611960885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fdc3a2337d2182f6393f4ebbc2e3f871389df1dec59e3a631d3c58359f2f684
Date: Thu, 08 Dec 2022 15:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670512254
