Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C1C3B7B7
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 17:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE72EC433C9
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 17:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695231308;
	bh=1gFRdfojEvDpjJcf23tbbuNjt/btGYRSsyce+5o7iSA=;
	h=To:Subject:From:Date:From;
	b=OxkwCvuC/27h3b1jw/YbUP5E9N9fshBKKHP2uNHzVsZjHLInCqpRMa10BfjLp8LjU
	 BvmpZ/ozFXu/Pdir+idy1tgQutVQYim2XzkaDlaTNwiPANqRaMacXJ1ie80TXXejEi
	 nYxfTf11BqTONLw4KboQA9Prww6oURxaGYZBK3s2mVKO6FfqIhn+XRMw5h45ak2rTl
	 9bHGVMmyP6nuxXkTeFv7NH4jTngMk2hVJ+ML34wSZ6NV4cJpzjMiSNjdfM0AGPpK/O
	 Cw8cWo50J5yO3UPUnzdc2oYPH7awmSxVYp9s3zQ8H9tLf6YF8Cc5oZIp4+Poo340nL
	 gcIo7Vpq9clQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD62AC04ABC
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 17:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169523130870.32242.9701279042620818858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 979df0f911b4c276e42c93d5ee5c5a4bf3dbf16d92f3d2755022c31ed846c724
Date: Wed, 20 Sep 2023 17:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695231308
