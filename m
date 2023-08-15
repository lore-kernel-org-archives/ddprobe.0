Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74864188
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 00:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C828FC433C9
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 00:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692059588;
	bh=SoqKGdByY7KhTOE3737a+VLVc2RVqZ1wyYGCqjEob5w=;
	h=To:Subject:From:Date:From;
	b=O/jr3zNWpWRYSNkxzX8mJ8UmixKTmRD6yBBQsbg4uFydxtHZqiUDAWk1MxBbflL9G
	 nfpeRj//h189G84C42b4GHvfamYu6NmYy2ptmBYj5yoFanKfNCxjgJTBY28odtx607
	 Qdw+wgSiu05/U5PxthQfmC+dGV0Qdiff39kmed7Z312cE4JRXNTv/ygkTk3rz9iSoS
	 xhC1dBbuyVRZGBvSmh2n7A3tr5vj/CuSgNcaKczwl9sMhgFWAcQZjzUU4TEYmjySxJ
	 WsTaTh+GEyEXnD9Q4KLS9nk6F13WG5/WRbfDhX0Yq8+hZW8ksuNAvfVcKE5umQWeYl
	 /SYJWomzLmoRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A886AC001DB
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 00:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169205958868.30240.11469723046246385018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a27f5ae493d735b2ee354edb5c0372b2f17aca10834ce66549adf1fc1991411d
Date: Tue, 15 Aug 2023 00:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692059588
