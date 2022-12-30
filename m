Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074C0259C
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94910C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672417287;
	bh=uk1UuLci2k3SC1jzweYM42JUbK4gEwd4YsLHnIQ0qx0=;
	h=To:Subject:From:Date:From;
	b=duBMlpd1g9Gbv5HRV/HM8IOTSeehjPEBAzCsDhIJOkgplC40X9+txq/4dHciMvkIk
	 UZFa40c5y6rRGSwOG5xyDfhnY2F7apAuIjs2fFlAEr8ztbms1RRd7a9hWHl1DmbfLD
	 hUr0NANNWZrK31+ZDaQHibtnjREYXFHPe3jmQSgnnCshkyvMtd3tAB8Rqb+na+CDen
	 Lhy3452+xuTPhLqIRhQ+joId1VPmqZyqkwJ2vq4X+2zkfk/9N26YwXoEdu59uGe1Gc
	 CwMnnAwuHjAytVGpINOVcKupmaW9qtwn1PB5daNE0Dl0LHCU5W14iuNcOKZBAJLgTw
	 VOsi57ByxLoLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D6A0C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167241728744.2653.4427101605756985199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a2f824e3c4408322295d4c9a19fe302a2bd8705d09df40669fe74e5d46006d
Date: Fri, 30 Dec 2022 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672417287
