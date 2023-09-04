Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB58C13A
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 15:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0E4C433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 15:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693841648;
	bh=ZPEGYN08j9hc2O06l4hS5vKsfdesvuUZXpzvfHof9Ac=;
	h=To:Subject:From:Date:From;
	b=PAdIaHaSuuSHybIfSDUStjoKydUXTJTmTGD+FeUTXd7BjBzCp8WMnKwiLLzisLX6F
	 bffMhgXPTjTDC9dIg6UEEYjkW6S64AX9QHO0J3tXG/xI9ASEmKIMoB1KxwmNqrPXME
	 g208GdxexDVHqHArvi1Xbcv3xTMmSYw0nyGv10E99vuwXqJf7fLsTjaY84zBnOSjfJ
	 aimeOqdOph6WrAZpJPQoDEeqnUFco6fAqG0CnfPzQ3ln4kfFR240ObjjZs0A9+d4wC
	 7veYMxIpcSt8/HYM7+r4ERIFyoxjQSl4QU4eevNlcEAJAhyphF/AzTXvV8wo5wCMmT
	 /IuKVBcfFZyWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B606FC83F2C
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 15:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169384164872.13533.222564238671191085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2280184036d065780e55f8600ac5d89eb4e388030a7ca35a0a362fda201592
Date: Mon, 04 Sep 2023 15:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693841648
