Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD1D2E3ED
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 23:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7A0yw/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF000C433C7
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 23:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697586428;
	bh=LP/qXcSq0MoNQYe3VkJqvicrutZAfNKkNuyTWoh841Y=;
	h=To:Subject:From:Date:From;
	b=G7A0yw/8p9WT3htvg5USZ9tVNezHBhqEZWFbp3MbmJoQJBNqk4lpn6je2f9DUYlBa
	 waw0Cbd8Y/e2mGfqDObhT+KufondBn6RPS4TU0SRIk2pSm8rHR97z2uH1UQ8n3ovov
	 BnO5kAT0rLsUJdrz1+wXKdoS7VU2qdGWs/YdmByPOQvIrW9km+DqSb0lUkXlaNKc5f
	 +GfUx9FE8SZk7SYRqhcpo3utACe2pvdSm+cEUgNt/JPGcPdvQNisZk5MUkSQl4AAhD
	 VLy2DweABBvkZZscFxCTXkE1ggWYlSiZmmfPg67AHkgSHM9OdWjPR7q8LPqfCG+7KW
	 djuICQlSNq9oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A823CCDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 23:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169758642868.31714.9442273638451748351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192086e92ea3ec483e0a4a377eec938e65b3ad18b91f3249183591d20ca13628
Date: Tue, 17 Oct 2023 23:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697586428
