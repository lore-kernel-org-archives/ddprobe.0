Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116FB1D12F
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brIocUNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76C19C433CC
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702906696;
	bh=NXq4lDIEJWYQkm13IE4SX7ngfj4zXxISdZSPB7QFXfQ=;
	h=To:Subject:From:Date:From;
	b=brIocUNUayk/8SDVu1CGutd46WGAISkdKJVFqQIFWZJDvwTo1MD1Ocaw0ym/Bnku6
	 Yw1ApVz83Xpk2okXLfidIdjXMqGvIwElAXdMPP8yPawSwGZyVHtD+x7YRoNGEZYDqH
	 YLSSgwjdlHjPH3eAcvdAXMut9sTFNvvzm7666U31ywg0lWX2Czd7py21dqhgZYvS1D
	 gFQavSwxMXrMj5n0mMb9vLL/u38vl7bUNl5vlapkK9tunXgU/fmEGqjJ5yqy3EETd0
	 TIOFx1li7+XQ+NJXMHfYkgcEMBjqil4AqmfQXqC7Q6L+KR9QbLOrKxzPvMlCy7DrYa
	 xmWSe7gR4pZzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CDF9C35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170290669637.1942.14779274312511842563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af76e5d79ad3937abf47fa8e47a882c0e6f8fe104e09e7935fde49de3ecbecd
Date: Mon, 18 Dec 2023 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702906696
