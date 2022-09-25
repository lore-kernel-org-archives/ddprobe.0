Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8AC77B
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B627C433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664119853;
	bh=WvSy5lYpqn0lym2QjFTzeK0l/tm4goiGO3MOKwWRTwY=;
	h=To:Subject:From:Date:From;
	b=EpiOc6PN/GGOP8iKOz19+J4E0JuYQwznZlvS+XryTuXswlE+Shg+nTJpr1O0UGp5q
	 GkLevoGuvSiA5MATPH34BE4T2bhd9n56IGWK4fFk7L9CAzSyMGNEPOL8J/3TLdN4Q8
	 e8GC/psfseevdU26FaCI7LBCU8ZLQUjAdnC4kW8ufibt1GtBw9rRemecr4yEFpkt4I
	 aoqIY5/YOYHG2V2yQXzi8As1Mi1gSemSRlm09fhv6kxQaK1H82kVIk4TBkKGoGaF1z
	 niq+SiahXmEH6Vs07nl5myCXhOFQHz279D1KzZr+qd3sN0b+f6afOwNBuN9YKFFvD4
	 sgZQ2to3ssmkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50FBFC04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166411985332.20678.6791443738484228416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c1c3a1ce647cf554793a9eb4f0824ba8eed9a2e68a8f8e499a80ad7b96b141e
Date: Sun, 25 Sep 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664119853
