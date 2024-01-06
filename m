Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E20F101CE
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLLK08Df"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 861D2C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704580696;
	bh=1LgZyuXCtpI+Mojv6yRCMhnVxpwcHU1BOLWZcXBQPag=;
	h=To:Subject:From:Date:From;
	b=LLLK08DfM3pF2kq4s/E2u863F60eE5hOX8qQvxeFtK81Yh1lmOTQ+GGt3um4U0ouL
	 2rHr+uNmlsqv704wN4jzZc7KKYobAnkPwba0a2KFNuA65Ki3tCqhLDmkhiqXoqVNNx
	 wkK/RQrORmZsJDOeo6XQAEAgBK8fwxpkNdaZwrX9MUMCgDzW1kDjkFosJqpdhEmtYz
	 ZKyee5ZGsBmta0zNOGKrjARGuCy314rzemnMotvMnZc2BgGJGTCgA6nF+wH3yot60+
	 laieiVAs95gXN0+6VkoHJGWPE1gumlZ/E+2fZWJFAQqWBsxhNEnTp/JUXqpRJst1O1
	 GEOVq4uY97Jig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67A21C46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170458069636.13527.5734128213055604784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576e6390536572c82cef07ca25ede33226495369518af31c609e5a620883252b
Date: Sat, 06 Jan 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704580696
