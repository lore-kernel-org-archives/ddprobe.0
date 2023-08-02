Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56463EBF
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 05:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CC7C433C8
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 05:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690952528;
	bh=Eqm0WgMpMgQFBzgm+4NO+d8KTc9LY+sUVyGPHFHCmaU=;
	h=To:Subject:From:Date:From;
	b=kLreQYFQdf3PuI8/CSyVuhVcqHgraRj9jaMKwbWQ/Q1bpi9WDBABEZyFT/jZADPaL
	 7mKuQS7O2UqzLJ1gqC/cDWCOxed0NjzeaG/mdONWmQUENFe6W0eUK+rLDjRvssbMxi
	 HaRuTSRcxE2HN02rfD5i5Lf1P1SuoGTjpd9U9ekufNw4nrDOFcd/DbD+3ITDvMFMB1
	 x7LAn3jPAElaePAhmgn8PJPRbCwkDtOdic7qfFCZ5o4aiSr/TT3KPz/ZV/zyUr8DBd
	 Z198CoN2o8VL+JPYIHjGdElto0Yv5Sr0zptMgPUl+EH3AJA6/KDA3y63dkL/j9CyAB
	 irhL+jsYMXFYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9C3C001DE
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 05:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169095252870.4204.16961554600438833196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc494591ddb9c93c4cc42e7e9c2dc9cde5769be86c63721a6ab739f58463989f
Date: Wed, 02 Aug 2023 05:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690952528
