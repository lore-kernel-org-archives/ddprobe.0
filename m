Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B95517C
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C437C433D7
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670028654;
	bh=uFKy0EjyhCAhFx5Y1ePa4WfMGqufZ1W4VprBhmc/7rk=;
	h=To:Subject:From:Date:From;
	b=sRAO2Hsv0xz0MczlYGK+26rJlPYybSxTmlqVdmzCRZs28Pgvk9WrmUKRDmdsfCTnz
	 20JcjKXuEgYGGcNqmNLML1wuTxbroVj9a7Uj490ty/B5fpz+RBmS7xAxjIKTshPVzW
	 PhZqxL4E785rLzSVyOFz2Re+hzAoHx4BuBu/EES+T0hU7scWVnJKJt7nDex1AyfCT+
	 bp+kxFB/qkq3LYcGXDVniWn1UhcK4ohab6lgs+cJexySYDR8ZkQSXLmrIer0dsPOp7
	 e2vU7PUykXmdiZXFr98tmCF2AqHI5R/CCAZMoOhJwVMIk08s6SqZSd/HLS7epE3qyM
	 bi8IU1Aj7HIqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F8CC4321E
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167002865433.19988.6122510474337707515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c39d3207e2acbe4b967d824e60fca7d9abe91ce1e5212c7c1b13d903b1ca7db
Date: Sat, 03 Dec 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670028654
