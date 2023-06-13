Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6335D1361
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 23:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0724C433C0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 23:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686700628;
	bh=ANq5Cq7XqV1c8Xkbq9xmHPGAemPHwVFQF3v/+2ohkwI=;
	h=To:Subject:From:Date:From;
	b=Odu0EnOLGaxqeNLU9FI9NmZBxtZVQTNiAL54EjXdn3fFe8l9Kg3WmT+hL6V/disJP
	 PVcwmEGlLghtErFDg+ZZEVODYG+79+4PKSUlJowQdZZgc+h+7PMbbSNnZrQewLGHPx
	 QQMLLVSWo7NnVHRwS89siDmNM0m8iXub9OgdjSrAOYNtPAAENIqFmVCOfvODIT31RN
	 M3sFdk2BA212Nm0Il0+ZAs2XKryn3wSweJ5TEm2NicLOzENu1TtLiWv6KL6RcU0iky
	 iomiigkO/Z7cNx+1iapsibmTQtsN9a60hYs1fmKHabn5MBWHVSC0Azwt9Bf3ekNs5M
	 YjE5Flk/R4Z9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7651EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 23:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168670062866.24983.9030815116239013190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 235faac98939b6a3361ddd87642835ef123aa8462493f921c7146f2a192737cd
Date: Tue, 13 Jun 2023 23:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686700628
