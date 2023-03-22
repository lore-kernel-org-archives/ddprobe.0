Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274312566
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 11:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA748C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 11:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679484545;
	bh=m6v1b952Sj702DY7Iqsf7NNJpjSuPtHX6Yg2vJ6SuOE=;
	h=To:Subject:From:Date:From;
	b=nZ56XL1yCTOXAjr7Ho+gAIvhNCK4rhXkO4UPAINA0UmTYK8v7lltb5TPeaRR0ZzfW
	 RB5Bus5c6qGTU92gobUHcA3MqMIudoO8xYaJstwEckqU5clAxgIhL6d0GGSKwbOEOZ
	 yFwOwVcGwQX2OymKNtdxT6TlfUeltPbpPeDXTMeCQOhxu4R7MGWr6EMPJ8LCU6yHBr
	 jKl3dtwEG1sBZa9ZLZAhURkh6Dhv/nGi6put+tLCqK0zswXlVyL91G1KeIxSrKXcu5
	 BF2vg+wv3vFusL9ut+dTzIfV7wnM78JOZENYa/NI8ICRScwWi3GVBz/liZu94OwXv4
	 0epVogc5sYSSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B03C6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 11:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167948454573.27575.12695779968385407616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb2a0ceea9224ace04cbbe715200c05db9bdae6808ff859090036882900c4f8
Date: Wed, 22 Mar 2023 11:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679484545
