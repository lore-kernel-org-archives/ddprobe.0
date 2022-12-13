Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC74615A8
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 897E4C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670913087;
	bh=NnZ+1Vh36fFT5OQIDzjKIPy6gDNgkhyge5AtfNgbCrM=;
	h=To:Subject:From:Date:From;
	b=oZ8QmMk4BO/zYYg+lhRw6It6G79yjHz0O2Lp+k++YWEWpBu59/uLhFi0WTulbuqJs
	 oQMBxPJEsBqhE8VEWUmYrMnJ5k9RJs73N+ByQYYH/lJnMtgoqW7zxm+bFmqf6t+q55
	 VfO1CT3QRgPV/D4oQEH1KOOShmZ5uz2zXi+/mMd3ppcOE52qFxz2XBCNKDgsOq8Nlk
	 oksgLJ6ZV1zdmFyufzhLWX9yO0PNsi9lmzO3UvS7dGLrVzFay57J2wQoSab6PnNJ2v
	 8yDpGeyKAHDC1hchXOzqS+C+HOZynnVk3hLmoAf48Gd1pTqljebZOPRm4RF+QI7VNs
	 1KZBqLVNbwGXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76AB0C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167091308744.20037.16617008501656124526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8df6aa731cf5b10ebb16d828221172d27422cf25e8dec148758d9e028dd49f
Date: Tue, 13 Dec 2022 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670913087
