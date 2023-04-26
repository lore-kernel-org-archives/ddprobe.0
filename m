Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4371B185D
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 07:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2FECC433D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 07:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682495226;
	bh=tiC78wQVLC1T4jbgdyH0A+byPbqurZ+wJtApYrfaPEw=;
	h=To:Subject:From:Date:From;
	b=CQKX7+8NPU7EhzVBidpJxY9hxmAimvKYCq6CXf9m/Ne74/flvSMg7F71LoXKQO97u
	 VPtGTw1zGUemTF+KqySqk9+1C5Phivr7cwrTQvy0dn5sHg1UtajrPbCaETphNXsF8p
	 3M5b9/xhPqtYXhL7tp9880F6hVhyDo7zgTVkkrBtn4gWlbBhIEOGipncBxXn//tOb6
	 +6nT9cmuMIc+h+pFuj0Apt6SGx0HRJ0ktbRp9RDQe/FL7awERUAPl6venGIBsgtR1C
	 FDDvC5euJI31aiQiAOJoC7vrdP9OIVZ3kq+V4lXnwRQedDSDB5vlGG4DwgJmYGk1bY
	 Hi1hafNi6TS/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3015C77B60
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 07:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168249522584.16103.359040827197477552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad3397485feedfbe8ad4cadc674d9d9a90af2f47cde90aa6f4cd3089e178dfeb
Date: Wed, 26 Apr 2023 07:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682495225
