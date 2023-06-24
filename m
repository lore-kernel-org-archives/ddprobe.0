Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C8A7F9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 12:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7529C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 12:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687608788;
	bh=nJQGDNTYK+8dvHgvz8QAdUBNspHc6fzk7z53Njz1v+g=;
	h=To:Subject:From:Date:From;
	b=canvCQ+6j698Vhq+NLBYfwn4/M2XHMXVJW81m896drMRmAvBLZFsuLHyaSyyapsra
	 TNd5Bh+jHUU71lrwku2G+dIL8D2bn0qsE42kMTLjc49R6n14v2oH86M82t6T5F+JlR
	 F0T5/RNQkv4EgSwQ3Eejol29JOnpS6B5TUFokGAGrNpN0qIOJyiM0evLPU1Nxwo9JG
	 qCHosJiegwq7SBzb64rHFb4Z/CMaLp44tc72x2l8ga3MF2BeqIdXON9/Sv+DROSk90
	 dRfaVcBq0RKUuj7CLmK8+pJvJbFTOxD00xmpL8/giqTu7oDTE0Oj4PKGIqZzbk5JvH
	 aVdfTTyQeJ+vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8808EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 12:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168760878868.27837.4858958824100382774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d53b36d26896a7921418e1564a2a8e8fc38294d214e4a9eef315e2768646359b
Date: Sat, 24 Jun 2023 12:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687608788
