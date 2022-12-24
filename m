Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DE52F3B
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C5CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671890487;
	bh=tj9xPDNPNM4KbOwfV4L2QAdLBhospFUGFWpQ2ecsXzg=;
	h=To:Subject:From:Date:From;
	b=jfUEkIbu1j6ThHJPvQEiCg5A9JaFRLlxQxEZO2dIj9Zwhrc0bePxhhmABn1/gRBi0
	 TZXN5RLkuFhRWMQBJburg3efYLuUmoH3UKj5j1fJz0PhPX891YJ3QaBcbMEH4po//O
	 2MMG3QimGZIDA3u0BNdtzNMXi6g0mBAlXwH09Uqd9Ut4gsVtsyErs7NDKb6mZ8nv0W
	 KqMt8yRDCd8jWQf/N4Mu2R5d+XDFRL+r7ALNLOwWCF9AKRW5N7zUj8fQPIJR/DjvHv
	 Dy2heVCMpFqTJKEVAruMfR0BgOH7JJbEHhgK11pmBaHivB/dgxbGJwi95rBhK09QZX
	 sRF8oZ1AVLkmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 692CBC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167189048742.8382.833250679632585764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3886117bcac614bffcb9486d786f13c3dc9e612819a0a6109739796a9c8c0322
Date: Sat, 24 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671890487
