Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FD26FD7
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 21:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08990C4339B
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 21:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682113746;
	bh=CTVcZ3qVdjtmqrGnlNZ9nuU4qdMr6ReZCZtqt3Rfay0=;
	h=To:Subject:From:Date:From;
	b=F6hRTvvW8Ts4PP9nQaaFHdkbesmA5HjGtb88JfUCfZC/tbaWr9CslAK3EJ88+tWDS
	 ubcNetkmccS/aYkOYPQQ95yb4/1ghpDtbtuhWDj86NciDDx88UvB9zFaJLog4a2wOg
	 2pEEvp+9cFnuW+g3aTGidD7X7M9/jmkEHFxA+vi08RRlf80Z0hyiaFmbUGFny8YYMJ
	 r5e01lgj6gkzqN+2Z+68DuDrNJuIMl43huPRvOUNxr9InPriI85Fz1ICnwupGbUB11
	 0JTWtLb5NmjMZXxOt/DfoznD/wpTo9yLIUXvmvS6swc4QyANTOPYnmViVjhKig1ePn
	 Tn8zWW5XSIfoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D24E3C77B76
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 21:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168211374584.31927.10152521246214047252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 683d8cc0641f4f5e4b9a3c18d25a342ff59a74422f4223ad17978ffd1116324e
Date: Fri, 21 Apr 2023 21:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682113745
