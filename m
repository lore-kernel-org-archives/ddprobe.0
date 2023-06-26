Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F1C6122
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 14:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7314C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 14:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687788788;
	bh=AiKupD7i/O+hIMK+g6JOvMwN/VKytFYYpUWXpQM0Bp0=;
	h=To:Subject:From:Date:From;
	b=B1NURHTCRZtUwpMTQx+GcFEJKq4gMexwAlNOsA6Acx0B7kGY0s+pz6lf/EkMaZs9v
	 fuE0xTyXmLCszHj4yWz17qZCGSIwUMt+3/lkTqFf0MMVWtnDsG7LgGntV1uz/U3ixZ
	 S0Xm04EzNA+Na0TzT1IQP9zWoBupsHTchPS/84LtT8BJC47/HPCWSOeXGFBlU+d3en
	 3iRW4JHoVr+09LQnmIYZNZ8Px0cIVWkWUCY6tGoNjpeFPZOLsyAVFfdQEMtH5cEjzl
	 cVnqvtRapUo62V/tTG+9XWFLixKLR2ORf787pmySXUe7vtqT5kDv4xFIfYAIa2Z6ke
	 RePszQpepgfQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE39EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 14:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168778878870.14836.7263493615833830019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ee2172f159975e49774ec2e7ba5099c3427c5a62c83cad17689411c1f8ede9
Date: Mon, 26 Jun 2023 14:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687788788
