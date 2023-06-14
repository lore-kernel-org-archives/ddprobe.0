Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF45747D
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 11:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0675C433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 11:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686742628;
	bh=1DWOnxkjWdpUJiXoGR2E1AkaPUR1UFottN6kZaoQ2EM=;
	h=To:Subject:From:Date:From;
	b=J2O6r3AXlB76qdFH5PQiUE5M9lgL8QJKW/h2zu2wDy7QjJFJwNdeqMfic9kaXKTGh
	 Ka7bv862BUxJVkusX4kdzgYIlCejyL0/QX5FZmMqBjHiJCym8hOLRG/oPz2RL2oZxn
	 nPeBIiwF2KaBl07yaiNQGujfTanZkR3qqi4ShD9wSYUXgM9hZmSEy/ksKnO1BAkfUv
	 yGXJdhh+jA394lVyBk9uuqDcmqbirU7zzWDNVd4yA0oez52g55ZbO9IMEgIwQ0FWUq
	 b4CXQJbmqN2kZA7aARmYjApSDSw3+LXUL9Ru+YcBQvGkjjmNasRGCckjO+9/tW3c2u
	 vaj++ZaPiZreg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8E6EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 11:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168674262870.6930.14429748025781619216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f65182277fd99c52c00141995fb166385e44d027ee127fc5590fd8ba8791c1
Date: Wed, 14 Jun 2023 11:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686742628
