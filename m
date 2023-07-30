Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B0B363
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 12:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6ABC433C7
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 12:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690720928;
	bh=5CkVO070ANIxhPBjSFcqSBTqfvShSp3PqgNPoqA+zjA=;
	h=To:Subject:From:Date:From;
	b=b2pINgl0YBbvNfCf63KVxD+akW445yhjBvtAUsgLDnzel1kdcUPdBq2Mtb3B+qlWK
	 cHBC2bfHKEsc6Wr/Uw3R+j6iDol5HLjYkiDyQyYskapYRDJJLWHkLPnn0g0aOXOyUW
	 lajXVv2sEcnL4NqI0JGxNb0Lr3AJBSXg5+hjxdU3lX3LcJmosSHLU9ItWO3WINjXoW
	 NFhtCKJJ5dFANMGebJJG0JH+q262ooEQA0M3fpbSG3VhQDZfogHTaorxcmEpkQmeg6
	 NaQ0eIffDdl04BshSKQGVhhZRhB0IZpLfHDf8rOOs/cnIkK8fKYU0BUgvhE57uP2jv
	 XT6fZs1bKMqkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA60C001DF
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 12:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169072092869.25404.13092582198921823081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8679b6086ec17d5134cbdea82baed23edc81377dcebb0c5b2666705620589006
Date: Sun, 30 Jul 2023 12:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690720928
