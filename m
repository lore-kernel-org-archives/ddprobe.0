Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C709D7C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B6B8C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662627053;
	bh=wwY7HGN0hNBInsYeiz3TnBrQ3rQRBmsNNl4AnzUc9Sc=;
	h=To:Subject:From:Date:From;
	b=lC+saRaTX6JRc6REph8SjvKsqBuyABCngjUpyQgRDUFF0ml6vGIeS4oXAzuwl8y9R
	 2sqzRvWuRld8nYK18rvVAYCI7tsdNVIssUm0mZZMl0ItYjPwC5bTqLlz9NBTAcKTif
	 mSxsGQNfPKFgCsyYTNIVRFxYy9/b/8Rq8SkQa6Z9JmusrE3yDnz+nAK8C+fyXoV/ed
	 sz8hMMvbVM/kHnxPcT1SYuBxhW56fpdwswl4LC/n0uSVu6wSyDweq6QkaHeFeULcso
	 b7zyJGfdKowgfZrYA4L5I142Kxau2oXuh/jHqxrJ9eZBav51LXACSBNoSN728WM95J
	 fwLmfwLFmOBOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 506A5C38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166262705332.16825.2131114600187828470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a8b1faec19c5fca69473385b0cc78f7708945949bfd4bcf9a59d659947e852c
Date: Thu, 08 Sep 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662627053
