Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7B7320A
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 08:06:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC46EC433EF
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 08:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681977965;
	bh=fCAZSJWYGnvu8CWOyeziX53WS/9CQnoPKWbjV5OZmTY=;
	h=To:Subject:From:Date:From;
	b=RNTZbghrMK0w07dEHn5odlA84y5cVCNGvShs4uvhRWLCtNIZQosvAk4b/xncbHmuc
	 5SzrjVgtDIYoBWNRM9U9UosqRRrzzLlzUDQZF7nB1Y4abmRGPGNFJ4Dd6YwWyiPOmM
	 hXWaP7VlxHY2bFPY1ePl7v9J4CZ/ACgbC/ZnEdGLRUhMP6ez5omlHqYj8iqOh29t5W
	 9vrj3wsOip4mvp0wXAt45L7Yvv/yt19Y/lPXvZcLBa/itSLahFqMcKr7MTR/PDHJDQ
	 5Y4hYJ72x63hnSCkZfib/pg0f8hZFhOlisyCU8dZPrEsTvI4IP90/ePV2OIELXWFWs
	 7JSxM5Mo6fKhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A3CC77B72
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 08:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168197796572.18496.2418221330430110814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca035ae2ca2907ea8f25a2bfdcd44308f183b78ddd54d26381a02710c14ecec
Date: Thu, 20 Apr 2023 08:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681977965
