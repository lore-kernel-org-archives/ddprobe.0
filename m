Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27272F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74DECC433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669311054;
	bh=3i1oXBY3BIxQ8wPhCJRmdb2u9/9zDMnLTLcPsfX6Y1k=;
	h=To:Subject:From:Date:From;
	b=CULaKdpDjTk3VH2YFkK1ZNqx3WngXjeTWiLI1Z0MBfL49H0thx0edxDrUgfeizsxC
	 iAILphvD5Tk5S3g0xjMUfdEnWyW/2v3jXG/aJUkMaJCOQV+D0SxEoy472V8hZz0Hp7
	 03UCyc/UzGhSfEW+Hle/neVUyYDHZRwQnNyjAQ6PerR7U3RnG0jaSuNYkPkIzMJzn+
	 sisUg89q/PBoWwANo3EztdALdKV7CO+iHGugz4UVsq4Qqh68z2gpVAMa2VnSMg2Lnl
	 nkkbYMjyAa4la+N9dVw6dCn9/ifoBWiZZy3mHCPzfBLWuxl6Zmp3HmcHHyRjgOmini
	 QOhFuDofEGznw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C953C433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166931105434.1774.974357494403098507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f434b6fb92d53a372e61fa889a13557830aa1f3a7967cfea94d77fb19e05aee0
Date: Thu, 24 Nov 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669311054
