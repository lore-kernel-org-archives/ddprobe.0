Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50B833C7
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73071C43145
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668510654;
	bh=96F+QLls4XevCki4iQotqMtZiIJubdYyFzJtco+bUmg=;
	h=To:Subject:From:Date:From;
	b=LoZ3g0PiCanOwhsKNf2CjzIcvgYlcTtWUPB3IhkZ6NZTx5V7HLSVkD2Cj/qmFTqsE
	 E9O33cIKciRbU0v/egiwqEjkSK46TbxFl3Zp8NSIG1abZH6gkxKl4864nTLL0+uJwd
	 dzEhtnmVXKt1SxagXx8ByZ4VoaZeCcU2wE2QhzGzWK3T/GmKYebKWqJ2RAY1QsA//q
	 TN757HuQDXnUN/SaY0rcuO1qWKYhFe/kInAsPtUGUwOPYJFC6XfPR8TSh5VtYekGO+
	 a/oFYaHNf9g/8YDOTUdYUSnKW1VUG2EbxzIj+0ZhhBR86TL9iqt8S2FF6z2TLTG93o
	 PRudxDAGhaAgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54778C4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166851065433.21469.13131698459925319412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b74510e02a5434f54cdc8cbfccb2bd3a45b0cadf1dc4a9990047c9fbf51731f
Date: Tue, 15 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668510654
