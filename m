Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F091D12D
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjVvaY+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86DB7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702903696;
	bh=5A4mRzlsIF3qisfjA8zFdC+YEnBViA45zFgCZd4otEA=;
	h=To:Subject:From:Date:From;
	b=ZjVvaY+KDEZ9bm8XUkbvP9kREmMZY4/1TO8G0w/bATou2XTJLazIMjT3jK1kwxiIj
	 Duw103njRkzB1RW4oOOQQ4NDeMFnIiF4dCIAB57RSIwgQh3qw3WdbkNIR++aZRk+cN
	 PFwRKQFXXPZGU9TioVuLmXFwpF0tWqZgjuwl5gmsKVncT93RvatM7c/MJvSFRxuU5n
	 k9aabNO226NaFWbee7eyddz5yXJZe4QfOyIy9cw42KFBJaS9mpDofyYgLEkizWg6Oy
	 U9DhqBLbwTnQ89nI25KXf9s33r1z9TPkFY5Kv465Fcg8OD/y1aEAFcL0rv1ZdIuB5x
	 7K1nZppXAmaug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B74EC35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170290369642.31191.204475376596517275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 453d7f2f7c3206eea387acd2ca735babac0a0e371dc378bd07e3fe1627ea037b
Date: Mon, 18 Dec 2023 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702903696
