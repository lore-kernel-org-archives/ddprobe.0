Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C57610A
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 07:28:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE053C433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 07:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689146888;
	bh=7/PLoLF3bEm2SO4zwRKpsl4AszvZ3YayEc5+H92o57I=;
	h=To:Subject:From:Date:From;
	b=hlgI4HH3wYTluvEkYllGr7FuXm+1IWdbZJo1HYCtQVw6ZDx7jKfcUgrzOLgxtup/L
	 QGWYhsmI2dnToU+YM/uF6DxePc5xdWsJ/KZa/vvoFmeulWQ5cqfWpZSNbaEZ4tDKQp
	 wXwYV/MMQnHCuMfto7ukmfvP8QdoqrJYaCu+JiuZ0eMUbQuWzZD62EJ5+WpNd6jDjX
	 XAYya8Blgj5OZ9nDdlz83lpk9KQIm5L+5F0mgov8EmmEZUhZn2ZHIcO8V0ZBqZGSHP
	 kgeCEcSc5h/ACY8lr36cT5RLqXobzvCDNPjQAWFCqw+wB2GTdN3B+IWLCm4Xm5uuM+
	 52Y9UCTCJwXeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF20FEB64D9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 07:28:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168914688874.8787.7600856698294476553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472e029cda3eb1c2cbef2a398f6407d81463313c9efa1f5148e8d27f80f86572
Date: Wed, 12 Jul 2023 07:28:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689146888
