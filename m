Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90F162018C
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 21:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7175C433C7
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 21:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692738248;
	bh=bA7p2II7tFiDpeil1iq+MEHuJ8gOvhMjE1mV35hFCX0=;
	h=To:Subject:From:Date:From;
	b=uOeNO51dWvfl50ura6O/OT3uemjK88Aus//OGemzgtlS2vfQeNC6vdYv6wAqYxnzn
	 OUo8DRgZqwaDCX8vwVj96Ds8DRmfIrz7fNe7z9xGVH60ERgjsOajn/CY3uxyvbb0JJ
	 Bc5r3ICQK50Eta9AspY+X1HswS77wgd/bUmqRRzZRuyKaqG2I1KfiKjYmvGDMdL2gA
	 2Ckhp3t6EIgAag3pl0YgsQdYYFqM8KGFg31vQXGD2q46weBxcmmJRp1pQMWjb6NIhS
	 PlwSjAwoiPJ/bqS1CY4IHV+w3ZyegQoYqaCMamBobH4x3bvzwO3+7fLJyRfkGgYaH+
	 UWAzn55nTyYlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C110FEE49AB
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 21:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169273824876.10713.7884737165245079653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3168783654efa2eadb6112cfd41e17b6842a945995d5630e8f9d55ac849e45
Date: Tue, 22 Aug 2023 21:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692738248
