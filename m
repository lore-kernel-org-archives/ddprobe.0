Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037C8182C5
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3i4hq65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85537C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701848896;
	bh=01ewgdd7tChLuR2hEoRfmxXznj53oOyozgCEL9okv/E=;
	h=To:Subject:From:Date:From;
	b=O3i4hq65Vf7vnzF0VlAPSFbOI/WoGOHP2lBJ+5TCRO3fkzI877B/PEk/xEqPsX91p
	 s5pcc0F8G0sE5dCEChWOE51T3yibKBgSS9hIRM1WSLNnGoDJRWJSx+cNr0Kd/4FtJt
	 Ne6Vpei6ms8V/ZZ44RMDOA6Qf1B+5XQSjlfqeEnbR/U3/Xr8RAoIfXYJ4WII8rYja+
	 Iz33HlGmFW7QLIPh0ELfSreflYFJ6DcMoJz+UiTihhIkiFHl8m5yniBbAhed2H6zOH
	 c+ukfgnpsvZA6yBEWufseIUyFMdQ6FbCZ25R1Kc4X9RAWqvuKwD30Hc7V2JAA2vemo
	 5wmajTLQhpCuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 691FCC4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170184889642.11490.9289101832529145513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a647c637d9589be66f395ba7b0968983a8ff648852c02f5ddc6b8c87755bcc3c
Date: Wed, 06 Dec 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701848896
