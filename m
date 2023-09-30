Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DFF117ED
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 05:06:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B3BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 05:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696050368;
	bh=yJ9bRfdubIs8ByWmtmVVhFmi2hD1FuZ8gDTX/0pmyfw=;
	h=To:Subject:From:Date:From;
	b=TD7yLgj+iJqXjWnlB6X2jCRi5UmgXZ9P/Aka0aSRx9Kb5BgVd8FTEneaxkXH5VwX+
	 z/hJ+gGsmRQTYR+3QPdC3pTQSfytT8wf05nPhFfeOiNYP1XewU3tEielLk6pF1Fo8h
	 WLQ8yaRTigbq8n2DzRTuHvtkY0uF97tdzSiEZRkqU8Q7lFZ+72UKM+W5a1wQPDs+im
	 /BqUDbEvi8rxoxJa+iW5MOdLy7wGtLP6ff3qbM3UPAZ3OQ+N2Kk5eYhtgc3JJvIabx
	 ENaxgrbx+Gqg/1ZV3f/bxfmd9Dc/1YroXA2Y4ulK7T+1RWfPpwSXt03nEdqs4ePDBb
	 Mpr5xMSXNhHKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94EAE77354
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 05:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169605036868.5256.17163962113156053456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eae3fb42533be762a9316ab511b583d9b78fbc5bb7e663bcda3a43837106ab4
Date: Sat, 30 Sep 2023 05:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696050368
