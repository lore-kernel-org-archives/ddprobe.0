Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B897B
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CE79C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664243453;
	bh=TyA67hgpjnmEz2IbDpBDYUNYZ+PCNYm243CBqaPhq2M=;
	h=To:Subject:From:Date:From;
	b=uRLdD0LtldpXRPpA2nHIQX4HZeurqH/5vkWcf8plFDtb1YavAluMcayriXAsxM5iU
	 X2ZkxtGLeMwJfKSMmTdUnv5XKi+7a+H9QW16N3aBzimdq6eLF7OOmpiNnqfIQtkruw
	 RNTr0Q8kPsMHbGgGY0q7d9AXGRB0qIcZM6YlMQ0KljJLjp/w0CXMktu+WKex9fBE8K
	 nVL3M0B7acpqU32HN629MHMFVmV9IBjaK93zmhoch4v/0FWUAH7nFSnglruEDb80Ys
	 01IuKeplH3TKJ3PeZ5C0+t1rxN6xAiGGvj6N/t0zstrbXrLSMHZ1MBmaXFo16X4d9r
	 ELuh0olx8o6mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5448EC07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166424345333.11027.8834502150574730465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465945137814ad55a8ef39cc15da28387239c23866695ed7e4f513a037c5fafd
Date: Tue, 27 Sep 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664243453
