Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1CE7E829
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7380DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666974654;
	bh=/jF6hWaMd5GjhzuCn2OeDjYXoKH7wD0x0VprIToxTis=;
	h=To:Subject:From:Date:From;
	b=QiXTrVQBX9IFvGifWVUhW8GybhO7B+TZbOH/KQP/2S7T2IeIv7qpzihWGe47xruCM
	 1t5vpMzqHyXaC6xarDi9lqPs/LGH2FFFSa1ZxLSsU+mjTkj5LhvXDeACMkhgX+EmpT
	 3Ljafdw7irpjrn/GK+QhPukhYyZ7Y+rx/nhxKnitSi4CDYI4N4628reL7Fsd3Dkl1P
	 vYcD7o3oIdLztHpG6yR87Kv9ha73EMlvLHtae/iXdMbmvb4n6RTFGPoPwYZ/08+5yq
	 ZEP3rhuxW7tu+pKb3K10PbrQk0Hk+WoXshZ2ogaAdRu2lNiYowXw8nwFCw3A0uULRa
	 MiOFhFdEdxHkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57556ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166697465435.14734.8477295358032592620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ad0241bda53bb4e4278ceb6b8a4230a8afae6acc9e14f0156014c1094e079e
Date: Fri, 28 Oct 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666974654
