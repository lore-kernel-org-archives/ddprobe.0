Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE59C7B
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 728DEC433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667268654;
	bh=RkHrhWfzEorCfZFxXGZnbpPHEfzIQSagXQO4yYn4ZGM=;
	h=To:Subject:From:Date:From;
	b=nU9LPpPWfGwHkHLk3a1DoiBu6Goza4h9HhgcqQGHg4d/srfT7gWPbGsfLSiCU4P5i
	 nVFrRLH2r7Myaff8huGsP2lVJt/m5h2L+Avhvz0JS/n/DbP+r49lp88GfWAcgdEJFk
	 TW6MqVsmyzc4GuSKhh018p1LieZkCiTiDDZ4jkynZZhr+NbKgO5ZiadiCFjbcPQiYs
	 XrYe+n7C/WAwBhQvkJie1UxR7QDWTlyjvlYYeUyAa/8+t+vIgern9+QmRvW73RHCL8
	 lnYVb0J4K6/8sD9LcTZqzRC13ECazKpzVgEBISRvhXFkJJILmkJdJ+LcUQa1vb/ytF
	 bQOv+m4V/EGag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56434FA3741
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166726865433.27316.1691721586201362785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad28c07109384c582a39499cbe4a93bd30353c2b8332b3663e39ebfeb198ce5
Date: Tue, 01 Nov 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667268654
