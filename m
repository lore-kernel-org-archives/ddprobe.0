Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB2C4A1F
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BAC1C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663586453;
	bh=g8A58fId8S+Q+ntXNu0GUxb6abfQZIQq9u+bHio+tTs=;
	h=To:Subject:From:Date:From;
	b=SjrjN658Z42tvNdQqQBI5pPi593jTy1/YOSWle9L2nWfFt8sd42bvlaZfyb0Jo9TS
	 8mJmB0eBNe9RQut+uk0l7xtLjPZ4mooTaEUKmmFtJhVWFcjj3HQCmDI8/aCa78AKrJ
	 2E3fXiHgkmVRxUiSbw5BB/LmfPxKoU9H+yfym8d0s/kj7G1wf29A9G4VhhJzPQOL5e
	 IJbJGwVKoAGCt/160lHqGo8q1yau4jgxajwGHkNaXqwslDXbMGIPoVpsEEmAkC67ik
	 kWScQIFpTdk8hp7ToXZSNzYk2wm1+BcTJdDqmWz8lRdK1Ji/QmETXaqMKFqmgun6JQ
	 /h0ibV3SEBfFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA56C54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166358645331.20563.12670974349296554409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b61e29ea93927c1a5b76130584a24196d1d9818f3f1f00cc59ffbbb8c26c5eda
Date: Mon, 19 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663586453
