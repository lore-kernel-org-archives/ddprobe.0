Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7DEE79EB
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76748C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670096454;
	bh=JPTyg8pSJ5ooI98rvk/WF7s3vTLXd7+wv8HM2KMvNQA=;
	h=To:Subject:From:Date:From;
	b=HKhGnGUp3LC1J9yvHOPzhTsNOQJKyvVpgEQbxQHhanWuPTXBxmztvIvUVTFFP2QgX
	 5W6RTvqSh8+O3m09128cuGyWmVHv9I0bspNabZ6zKk/J9rMvXgvxsFbYTIIoO/R/fh
	 /Yhp/IM/g9RBTctY4j/Z/EeNw2nu/2wfOEUmnY26DWJj3Q6n0wumzJ7hz5bi600A88
	 7dTTTYGfV1TTFyxD3jMDhtj+7Sq5I5bpxuD0fRNJBmfeyNdsV4IvYgF6qp6Bvq8xJr
	 s2+abMmFDHx6awIJLgLOgEG0QitovgN/LqMqLN3NzukiqW4zTiwIEc+3SN+Hvxbovy
	 yRgNsmy8Lu7MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 591FDC4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167009645434.15567.8540221585075053896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01717791ebe43fd380c5b3ed798b4f394e86f9ecb0db0bbc099cfd924458cc51
Date: Sat, 03 Dec 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670096454
