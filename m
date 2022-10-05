Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C87192F34
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6871DC433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664977253;
	bh=gw+Tmtso6JICDrpYbj/h823i/HwZo+1v3q9CUJtHoKg=;
	h=To:Subject:From:Date:From;
	b=uDlnuESwJ2/ISPfzDfL7dGwQPupedp1htCs1h3Q4PbeQRlgN8H02Q90/wP5GfoHUv
	 Ln7LjR+zRTu1qbFsAAifq2MHCHQAlWze652mkRmmJzBN1dCdDdgVx5EWPvEobli9CM
	 g/9O2ulTzAWiloKth4lHn9KZabYIddVvNZAcsah28leK2w2ddn+ho4bn7NsQeM//Dn
	 LdL0cmyx0okjgutkiGxg2HLsGkHaYSafDUxSMFESTX8VfOJsO1ncCgpM9fxqmO3Ej7
	 tuRtr22H0ZZ+5JM3nZOp3glf/FduQq7jonwpN5VPixW47eso1kLpLdAKPc1m1DF4PA
	 vql219wCZH45Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E5AEC433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166497725331.26732.16201848724032709951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03a0d6d5618feb25e94c21bffc3451b5eee1aa1d99e514d1a5c38f07c327e7a
Date: Wed, 05 Oct 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664977253
