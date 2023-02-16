Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F6C6FD6
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 17:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D2AC433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 17:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676568125;
	bh=51j8qLVkhfBkPX78DU4BMSTzAZdcYHvJJWL8vEFYy/M=;
	h=To:Subject:From:Date:From;
	b=FurGE2GmVQFf/ofD7BjDG/s2L1QhuMWkyFmd12ZYt3HaiYu4U9UtDo1z2vp6fKeZf
	 YdaM4AXxRg1goFQu42Fg4XXXBp1VQvC7D15njwjP0rwScnk6iy6YgohXilcVVzDfdT
	 vuFt7IzEOxb9IMgUNc8ERLoOh1/DVgRJiLU8QEQ1gt81zksG9M0uIXeiEprE/rXFmf
	 XbtpNjUiuVNmkqb7YGWVjq5kJCVEy+sdG/uvhu5gLwhnXWE0zfzlOwNutg80N8gjQE
	 CM+Ee5qovvhJfUWCgjwfdbDdm8jVyoWjNkNO7/D6lMdIchun2WKy1VIWqtpPBr+OLB
	 XD6eOT24LaMzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C257EC61DA4
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 17:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167656812577.28184.14255938056940355276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: effc994b15ce9d4508ab202f2b2ea3f018a0664bc864c7b4a3b78314a15a2844
Date: Thu, 16 Feb 2023 17:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676568125
