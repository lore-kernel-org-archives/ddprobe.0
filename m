Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D1E15BE
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CDD9C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671766887;
	bh=+SV6jl6tWmODl53DHXbq+5iVDLtjuZGC+sZProD+R7I=;
	h=To:Subject:From:Date:From;
	b=IUZmsSr+z4eVzDPlWtjSq3fG7S984oUApp03aAiwEoYLiMZMkKbT/OTzhzYJTrEzv
	 ZpPZeYA8CVEKUkSaHHKwKuw6Np5rirYQ55tR/ereWaIqFu3mCGv5EmIi0rFnN4ZK2e
	 4+Fbxw4RN04qVqiSVKIzxK0roHTvjpcTfiK465dkwUQWJ8pa26ykPSPnc99YbV+ift
	 xiT8fxDm7okn9YriXvi+78XVtwY4mM7+XXTz2k96pIETDbEGRCZuz1fmvYWdiF0dnZ
	 n1Kdl/1mwwSCSOlkTL17bujYI/HFawOdUXeHPgd0BcMdZ8qBirAh+rE7O+PhM8OeZ7
	 2xH14zZlhWAsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E116C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167176688740.12216.14902635464498984672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d2bab8ad5d87f02157dbbe1cf5ad6a8026011fa4d495b9a9ab8094146ee060
Date: Fri, 23 Dec 2022 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671766887
