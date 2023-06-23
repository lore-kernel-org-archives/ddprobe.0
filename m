Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517B923109
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 22:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C744CC433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 22:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687560788;
	bh=l05OurQPWRfh9FPqhr4mlh7BOOAPas/AnFIXdO6Aik8=;
	h=To:Subject:From:Date:From;
	b=ZOZg5AMjrJDZ5k5yEkVFWKeaBsbxxAu2lvx7yTZHIvGMiOd+c8whJikIQ0sEbp4LV
	 EPGFmiSIpMN0Aj0csLg7UahW7VPEZ5IH615xxijLPH4BzH+ybTuaS1ICsEhNKmeS3t
	 usQpwvq4y/BUjkYKFa5g1lV68XFWl7prNHhcC2BVIvFm2P5E53rcWaaQe9YU1PVQnU
	 WiEo8nFbzdPNRWWB94tZD0sq5vPtpYyVjrg8unE5fMtyJvB8DU4H6+HX9BF7roE0Qx
	 kJoMye/9kwTdMq5MJ0hV61x1aJ7Y3004UhahLqbUISwa74MMQMRrbwHDn99i0ORqAy
	 1meuoDAcBkTDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE3DEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 22:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168756078867.555.18298885924662270733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0864fa5a3e40ab4de3af81ea83e80151c9e3f7749c620055a9aaeece2d503a67
Date: Fri, 23 Jun 2023 22:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687560788
