Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514FF1879
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 13:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE483C433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 13:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679320625;
	bh=4ZeS/Jaz6apzjA0HwGnSrv3gXoorZPn4YzR4h7L+vVo=;
	h=To:Subject:From:Date:From;
	b=sskFwevD+fcdg43m/EAF5hE4CjFqDQQl1YwHsEPa9amoTaSzF1vsCA4tMPSKi0DR2
	 ALPT1Xw6lCBn0yW80dV8WsxyVbuGCWiJLCAFa/rwGK72ItrwSK6FvfrZ+C56l484v8
	 jM3r4M7oWj/ZL8BWs1xBrRP1VbXYfDrAUFgTsovdjUjSU9FvCPEo0TwVR326aXjoPy
	 Obcz8MIdva0BP8qE1zAxqjq39S6+eVG4B/SkTcjQzV+Fps3Yd3gGZ/GyuAWsxS+f2V
	 tI0BawDMMQ5qJ/8Ge0wc7rlzo4ktL6jx3QD2NdJyFUhPNKx4/yfCUCbIoNkec6U165
	 c8Ifum7Zmt8eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15ECC7618A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 13:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167932062577.12110.18142549385123474145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9780e4fefc71ce93f20a630eb981715f4b85d1fa9e3690333607ed42a08c0304
Date: Mon, 20 Mar 2023 13:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679320625
