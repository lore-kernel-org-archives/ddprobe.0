Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0C918B0D
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 13:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 122ACC433EF
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 13:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684329186;
	bh=zNI7sTsNiKDwa0h++jY1uJdgyOw66H0HyqlgIP+wUw4=;
	h=To:Subject:From:Date:From;
	b=dbvUGXaMaqkDzRwFPInhOtzVO/8kuvy03fhDvk2FFrAvtpIjq3eRVWenn143+BlVI
	 ik7NL25g5c+BeQjaZ/KlZwlcHeuMWXZxxnOJnuqTq/b93NezhLlQMQ7tDYXVh5J4ZP
	 XnTbOyRJ8Du+iqLhiLHryV0gJFNyexCVATpsjFSMJzXvBQImMDWFX8uY2kf6cocKm7
	 Nsx5BCQjUevhf02b+tgOGvZ8F8em4mB8dXuxMYvx/rJdOBvFVYywTDbhdtG7bWwfc4
	 RUxt5NbV8AvcwZ7Bd9vVL93wflLTjfTLLD3dJZyYNtb8L1c1ypgPl4Ij6Hsf3gSOUZ
	 i9NpoaYp447tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3B16C7EE2E
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 13:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168432918591.9938.7852568143932864714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab69c3399ca9e664e1251cf51f76683c4437d4af1be722a371321a276f0c050
Date: Wed, 17 May 2023 13:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684329185
