Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216AA10FD
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 09:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE073C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 09:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675328765;
	bh=gYbKWu19GqMz1Xulxy6+ZUa9X5xL4NakiA4EpYCar88=;
	h=To:Subject:From:Date:From;
	b=dknF247Uq3ONJmCQ5yM2IHhZovpi9Bt5oJ7uzDe5aW8VgiIa2Qh3V7wWsgtLU2Vuk
	 cM/OplmWV/7SdCttqDcQnoZoIJVPTzP7LrfoVIcfEwMn6ugaLqubMKWQv6toKSmNsC
	 Rxfvh5MBpK5OPYXZsmGyPMupGGSK1f23/J9f6N35sUXPH6SuH023i8ELS7uMAQwnEV
	 p+poHrMwqhPx378dqzCQqpHtHXrDJtogrQw76MMeJZ+4e7eOU1qqtfBEi7wkcfR7Ie
	 UTYH1XqwwnmI2A8DHUgPJ3YYKOO5WgDBqJ2bfcuRB1NKCJzrSWpGluSdXOfnu6vBPa
	 lkheQ2JtlQ/fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5445C05027
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 09:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167532876573.5445.17868758539423231811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97d09c78ad0ac0af60ad0c3daae84f3551488e4e419281501e3171d550bab46b
Date: Thu, 02 Feb 2023 09:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675328765
