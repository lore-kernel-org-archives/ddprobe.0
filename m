Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7956ED2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B2E4C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671435087;
	bh=84hZjKZC0pNprNd6YLFuOST3lOTnhNi2g/Fi7KWScPQ=;
	h=To:Subject:From:Date:From;
	b=R761w16AfMq7QYe4XhotUM5qBx3XmKg+aJI+s80HdrsFE6X161ZP0dSybBj4qRQHk
	 05lsu3/RlAO9mAn/WDJvp9QckmUfHTy+cjqsEV6/hRFvges8rljqtcyeAuITfuzzyA
	 iOV9w2dtZTYf5hrxbQ6yYQJ4lvCHhvYimSd8aANCE0noZ1Qrm/eJ0lDGZMdAjvf1uF
	 fudNBPXATgDmF4Uu0fsZQYMLzklQXrJV5G0KpJoCYintKN4Uefv7ZiFKvCFk9ljhdI
	 dgIgcnLGKzBzQMgOipR7/OLXttC0Z9wjv+DbJpS4tdq2mKycbOP95Xqc0E3egtBTkx
	 pzuMesZKpmZyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A5FFC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167143508742.28143.8922754998689730563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4fc09978acbe8c1624e07b2f813dccc826b4d13b19bd04fdc9ea14cde7b2b76
Date: Mon, 19 Dec 2022 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671435087
