Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089DE7C
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 00:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CB2C433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 00:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690505528;
	bh=uIN3Owg0J/7/QTWXfqfp2dOaWw6cuWXYxS1x111Gxe4=;
	h=To:Subject:From:Date:From;
	b=F/AR6ZP5R21eaDu/4hGJNrtrCFZQmZRl0soCG/EFHS2dlhvFnstMABZJwviJysHUO
	 uHl4t+qmciNCa0Ba0oDiTdLPthsJh3OZVFLLeKUXGeaFpM2JEbpHFzPdV2zcGMuveh
	 2p0IjeCzey2UT1R2X/X3pCn0zzify1tczN3GljPMiQBpIsYNEYBDhWiFdX16ijzoXt
	 gXP0phZyjHJusDpM9Q73x3MeX8pBsNlZEwnVKtn1dc4oK1HCM8hUuJN5z/g1ACGxHv
	 mpKC03GNdGFjBnc8DuLJ1GZ2nFThb7V7U+aHqPtZ35DJz82aK4xhDRvmkl57Fa5Iii
	 yRv+Y0xUKzOoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FB3C001DC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 00:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169050552871.25766.9067423621684896609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e43853b21df6b66ead6b50b670ccf2ecb73e6aa2d85547c329574927577d9f6
Date: Fri, 28 Jul 2023 00:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690505528
