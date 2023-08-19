Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75362137F
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 08:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D325BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 08:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692434648;
	bh=Qulyqq3PHgcN4YLP++4mnmySgxwkkfaiAUWyx2mL7Q0=;
	h=To:Subject:From:Date:From;
	b=PSlttQbMvBK9Kbs9Kk/6BrlIk/u06Sh8Bu5qeDUTB4krutWXtEBQEYWY4N9zX2MDv
	 /IdekIUf0mZCRXnzm4uGD5MF3NBtnGbZAvyaeTxY+FmpwoU0r4LPaqSalqGRN2uIV8
	 XYb3BofzrAoBa1yy20B8kN9MOaYWqlYsEab1suAJJbKkH83MpRqmrBLQMAeX7ym8jZ
	 H2X59id2qxJwL9rdbdWqmVyDhpS35VkUrbnuaLKdFqE+MEMi1UYeP5lbGph2rzL7Jd
	 hH1plb63vIHzAOPTFLIrUg4vUaPkIHGcjd6mGis24V5dU391GMa6yddms3T4hryrdO
	 AiGMY5cx1t1kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D8DEE49A8
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 08:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169243464871.14035.9059373274791332103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d88d9772c86250af896faa013fc1e4762d86c9b5d030b51587d1fa76fbbb10e9
Date: Sat, 19 Aug 2023 08:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692434648
