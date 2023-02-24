Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0BE3D8C
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 11:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55B8C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 11:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677236705;
	bh=N/GwtOsSd/ZRuiDa3n7WtJXHCBIEIJCyAsafkhiS5QY=;
	h=To:Subject:From:Date:From;
	b=VbShTzmuZWwaqze0dlouuJkWzlCV106v53aDdnonJACdQN4MHjI1vBxGxzlwtXub2
	 p82Mw9w+TZAmmIq8lofT/ieO08OxXDoXTAYrmLHC4ePpLJ8P321aki5QVHIj19oZF4
	 AOz2tRIOofVdFKJxP7mrTh/zANeIvfgPkbx28ZXEoLiITH3o0+IpouUVYIHyrqJ8LT
	 sdEJogDCL9LUMUdqH/VEXEe4Evzdm6I4AGZGNN83FgrqwBph+Q016vgF5houn1UqXl
	 /J0HJab9ACbjzuYcD4CiD5FymMZNGrMjLPLblG3v2eoL5vUrWU/nNZk86jNS58PlZ3
	 del5OYoRSv3tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99B7C61DA3
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 11:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167723670575.2507.17435106212640341744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 305acb2ddf84fb13a1b2d4f71e92087bc73ce432008217488e201c341bee8622
Date: Fri, 24 Feb 2023 11:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677236705
