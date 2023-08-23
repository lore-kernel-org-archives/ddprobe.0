Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6632E883A
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 07:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE19C433C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 07:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692776648;
	bh=3iqIXMIdoN4i4ubKHkhjWWOLGXt7ZYyz11dhzRZiuoM=;
	h=To:Subject:From:Date:From;
	b=bhPlUKGCOLjE/kNVqBr/dgTw8Go8LmtAv8Z1ov+mRxejdTSMyZC3pQyVgJop1QLSc
	 q5XP4AUvE57GOLh4x+m3tILu/XbF+yFEABtneqjkqAPBc/6ds8cN+W/OluzYCWAniS
	 otUqOtVg2xYD3seNSReiOA6yKNLz6FXIZUr2zyhphmsey0r+mO42PCefkMbQc06N1+
	 n1PS67vXJ6ZJx57TFL2O/0ecvSETqQTRVhddEXXY3Bp7PYx32yNCWdPThkbKL2fDYL
	 hnzbVHSbEd4a/3nwzDyQ4899lgU3hFO3yardKg7aQsY1JShb6ubKPVChHl2dPZb/Ve
	 lCQs9BcbhSh8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C2DEE49AB
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 07:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169277664872.11133.5356176833122854021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a31d4f9a52b9b43b66fc5598940badb18a835d6473a6d04b6d06e77e2a932f
Date: Wed, 23 Aug 2023 07:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692776648
