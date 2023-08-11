Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BFAEBB
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 03:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02CFC433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 03:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691724788;
	bh=8aDYYukWi3cLpwrAEa3t6mn+4z2mYKH3xtpIWmFuLoM=;
	h=To:Subject:From:Date:From;
	b=RgZ0bS2iJcZOijX+dOlH2+PO0xiCDgKfs4PAIknN+yJMqa/TNY+LlQbqGX35CAlug
	 m14wnbVP8x4/EZwjBgQzf7ElNkx3z5I9Fe5cK/wdaPka22JxuC7klrlLSLNmxlW7si
	 +5tn8FCNN9AtjBrwiPqDCHsDdQOMXCinnMiL0/73dyDO5YgkzT7mbafNp86BNe4RhC
	 XpwSkI2ec+EZxotcNH8FrMcdVCJBTvWvKRPrHKGQ5bAYuwINg/CbfV2I8jOj5l5CQ3
	 HBhCdyP3ozXz0UdDkWeO1VAOaWvKUXI5klLuly6cnxsgC9aEQQ1SmZZ3Ms6qFk7VbY
	 y+Ncq54DPI7Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4ACCC001E0
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 03:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169172478866.22025.12801481751953241954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f01a95399d0b99583b505314e94632321af30168a1aba2666ea61ff7949368
Date: Fri, 11 Aug 2023 03:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691724788
