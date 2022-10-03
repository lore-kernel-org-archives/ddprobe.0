Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9CBC17C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A34C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664791853;
	bh=nxrrHYE/L7OqsPBIwg9Dl3rGFBlyxtN/neoo1qJyeKI=;
	h=To:Subject:From:Date:From;
	b=S6TGG6JRtUnF6Fjqmj1nStDhvzHyERluAyYEIf7OkLPt9xl5uwfmnMAAqfr/uEl+8
	 Xa+bYmMEfpgtIcYa3PrihV1yACQf/J7TRSmJpUK3G1Hd16K1GZ8kNQMv7DGAI9NV8J
	 /s0+Lqn6g5Vn3xVPPqs7jw6aDFOpRA3MJQnTYa5wVbNglMT61UVi1MiM2UkCZlFrRK
	 0VnaPWB/j3jBGehOOWjl6ORHACElRYz1BV7XVMB+Qss6aFpJbHuTTJL32zk1L1vGAC
	 Cr/RPmmHK2hSxmu1EEMfY7FNV4jXc3VIIHYNCbyDxmJmJI4kCSnd3t4B5aHW7peZsD
	 P05KVwzXeZsUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A12FC433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166479185335.13410.9723715842833017814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead0e2d340851bd211322354d2c9244f6e857ca50a2aae424bc7c4c459578dc5
Date: Mon, 03 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664791853
