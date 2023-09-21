Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46201625
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 02:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB320C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 02:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695264908;
	bh=U6oO62FUB5a2hQudZdr+kQDIuKOfleuACNTxp0zRC0U=;
	h=To:Subject:From:Date:From;
	b=Xm+bm91RSpGqh/gX2r4LLyTZQaisfwhbmhJssHLzfSluQGF11/8R9BEXrzNIRB2rn
	 tJESyUHp+JoxSLRU3KjcPjTFl2AdKkdD+SwCliEljqpEnK5qVc2KuOUp8Yx+y8c/2j
	 JQWhDAgvF2z1TuvfIvBx+fycb1CvpcL0E7PuOcnplhSJNoz9qZsG1hNMvhJqZXYXW3
	 7m1sZ7OFAHYB4cKgXBY29qEJTAM8g4QcT7RpooGP3Wxjfq9nT8axfukmCMQeZNOQX2
	 tBWEmf6h0eI6PqCRq0iurR/h3n6RXC4DJ91jUVX9zUsxGco1s89jhVcEKaXW7uArfk
	 +0zBInw2o3GEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4413CD4938
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 02:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169526490866.1147.4417509611469611416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6670b7fd6234340ca93f1436436cbba2e8847cf87a0b1e5828cd3d2c7f9c0abb
Date: Thu, 21 Sep 2023 02:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695264908
