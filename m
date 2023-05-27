Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF0CD52C
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 22:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1CF5C433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 22:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685225945;
	bh=mn/Vk8qHKw5jvEnt0qCZ7szuxh9ZVpiyi2NwoC4CSLs=;
	h=To:Subject:From:Date:From;
	b=Vx9SWxpPZMpQznctnp1P2qFQtt37k5mB8VKCKeompngN+ID1QvPPWqi0pQUKSoaVQ
	 4labmv8SIotXDDWBU3nhIy5SziIgAj9nbjFmf3kFxC9735LE4qlSadWHvaDScpWFKN
	 4qz5M3knrw8XA946d/HvNOPf2zMe5aEDtSJn2S4mDpHyTGV/TvDPZ0l+ZBjMJH+zY/
	 p6yCOMpmyMK0BpCANYAd6azteCzE2pt2/05qsPrTOSYzEIRz5BvMwmTRgilSsNHdB+
	 M3UxXYrks06lDWrQ87KXsYG0q/8I7uBsVqKjaVceAlJUluFmkxT86kNJZox35Wcsnl
	 In78wTOnIBaqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1659C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 22:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168522594576.22655.6830647909324768257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3662df06518c40da137db8e531d1353d36f18691a56fa687c332d2fd35c18957
Date: Sat, 27 May 2023 22:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685225945
