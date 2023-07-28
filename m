Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E494134B4
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 17:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D216AC433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 17:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690564328;
	bh=pdOreLTFT+6UnKGRCfVueEkh6k8vuhwD8YHf75/Xmjg=;
	h=To:Subject:From:Date:From;
	b=PwfMB30K6rTwzZCOWATYY7IPVc92wWjNRijqErps20OC9zUMFi142ikO8wJ3SBVZB
	 4JT8pulsOnE6KjnmdqHm3VIZaFvglST4z8dghLuI30oD0/xe4/29ND8UXXCWBjE3b9
	 LAMXe6gyISgrzUCXtUFTv7EY+Cq4Qa62OMM6zU3Y5FNj4+QCmTqUUjQE8nMcvDs7LP
	 61F7BfgjQnWjtOB02e2d8wGwGofhhZqQ0FR7hnJu0sooAraQekfTyq6gn05B0rsgf2
	 mKCgYN+e5RC0XWxBvJKK4r7NKNx7KaKAQHcHI7diE+6pXFO7/JA0H1V8+20KEsSSap
	 qaizV9JOlUdrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6652C0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 17:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169056432873.6909.8973626981692555229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672dd6ec1b02ab7fc83dd1f68a583bf84461ae1e3035f694fa6a3b2b956f888c
Date: Fri, 28 Jul 2023 17:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690564328
