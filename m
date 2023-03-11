Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC3BEA1
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 01:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9DEC433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 01:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678499705;
	bh=bxNSlUSsDk56BNBywUnM0dBIAikBT3bVb9BIjXvkHR0=;
	h=To:Subject:From:Date:From;
	b=jY0hVSz4dDJS/QyYme6E64+f8OkfEytTP7DIuhGRQcoR5GLdVt16gYD/Il56/KD4e
	 cGrh6Tc4r/x8Jaf9hl/L9H0LfSEzGqIIdQdtw/6NOvjHg6nQLRo8BegVJSICOruX72
	 c49pqgVujYQT0wJJQWcBUHt4100BY0y5neYufIhSeCRBFHzC7ijUUWKHWqkKOg95vp
	 XeMZiukut+sHk6oorCXWoJB6cVRaO1VbMH72IO2KZA1j7tZ2ndEfpyK5fRMqY42n7B
	 oRHrYRE/c0HasSLFLSC4/9grCTizMcD0Elu0QssXfvL8QAoY9CQGykzLvaHhC3ysI1
	 Z3ipYB+BNF1aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0AE9C6FA99
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 01:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167849970575.13353.11681301503125778428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dcfb6f3d8119951ff86380a2220d4e6c15572ff05129150ed7d5886d734de38
Date: Sat, 11 Mar 2023 01:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678499705
