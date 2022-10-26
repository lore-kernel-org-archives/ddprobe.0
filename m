Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDCA37B
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B6AFC433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666801253;
	bh=64HPzvb1cV3vwN9T9liknRHTDO8zNHNPWJfoHvAGE8o=;
	h=To:Subject:From:Date:From;
	b=HABI2Gst7lyuObjwb9SMtzb45D6gC4h8ZRLmG7nZDIwBrcKQyU7ndsECxvuJZ5FpF
	 DiaXKm/pAids0M0B19YDm8lAkUFOyZ5vUjuDFfdqdju3WA/afIsm8l3TcoLiI6Dwpr
	 iie5YtwBBwyfVBkqGilDBHOOji5BwdL5t3rb7j1Tw1ADgq7V2DHYyvXA3Rop17Not8
	 rCOO7sWZJStsL9V8FGPhCGPfbfL7sEqxHIWcO+EEXg10rb3TWkBjScnW/0wuYD7wmz
	 tWuEVqSYMB9YE1fJZ8VDSeZTOZUm+ezUAqzJxr84rD0M7S59JfK64tp79tbL5lFngq
	 mBzW+ES47d4aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E7C2C433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166680125331.8779.346015015581828201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c90f33617151e0ec8ac87db09f2f281a6c7a65d22174650164d02912e2142e85
Date: Wed, 26 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666801253
