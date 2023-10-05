Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6A17F
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 06:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmoCijek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2927C433B7
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 06:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696487768;
	bh=S9o2EVrD1C7t94uRBZ6ZpUrJ+mZUk6mQ7lGb3SMHS0s=;
	h=To:Subject:From:Date:From;
	b=gmoCijekXDIX4jv0jae4uApUQrpqZbGAbwM7LqDGnmZ0XtGqzfzuMyPwYZFO836zG
	 8W1X+AstTFr30zyx56tjGSPc0EvDK5knnpWIyf0kArAtrxOeKZi/l4qT9UQulBNbfN
	 mjD0RHjB8Z5RkYyrjNXy9g+i72RMfJ18f402D7uvx1wGCBQQF/rYQqWA4IZ8ALNnpC
	 ek/2h6LZ9oVtjmfhJp0HOp+uPNl1SgL+aPHKOqt1cqMcN7KOS6lFIO0XNVWgROm5Qu
	 11/eLdG4sFbOMXNXOVE0fJ2dGCPBe3pn3P+FM533dyAXR4kCjQojtOjP1Evr5N93PN
	 imgv/Lak9HBaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84ADE7B61F
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 06:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169648776868.14167.13913721745762216305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f411014e43fcf0d2ba5ab9ee9dca5e70c8962dcc6fdf6a982fd9b99c573764
Date: Thu, 05 Oct 2023 06:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696487768
