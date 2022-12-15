Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00A32CA2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84429C433F0
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671097887;
	bh=49fBeMw6G4mnY+5PA+9A+1jOZ7IehvYoVO0qrmjJGF8=;
	h=To:Subject:From:Date:From;
	b=bCGlfQj6KuOAdMuiytRar0LiX15JgnTsg9WZCmE8VpsBg0JC5M3FUWN48t2vuZ2/w
	 v5qG4+K1YlWJwAP7IUAwZU0LOyDXldYpb6+WwZAf/mTGSgXJl6iGFE81TRHcljyVlm
	 EtHmESQQx+grxE6KkJBlHqssDMomp6DWzjOmxjEZG1qhlc6QzqSkrApKEy3o3b9gzX
	 1bFCXjckcgJx8s6SDtHnqGNwrDI6ugP4eSTp4I8qin9371ronGM5Fb3JFidWA9qahO
	 /19K3XUg8vhabagx391uaFjuc3Sk3h7HZhm5Mmmd43CanlbdDTeCtIQv3p3GblLGUa
	 LTh2M1X9vSgQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 691BDC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167109788742.26522.12161111977903088692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e961e2f002e4e44db91202d244d914eadbadf58d43ce462afc7f3481de2454
Date: Thu, 15 Dec 2022 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671097887
