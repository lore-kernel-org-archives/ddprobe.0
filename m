Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80E0F10EA
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 04:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C65C433C9
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 04:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691296388;
	bh=WCmbs4F5IwJNXdDO7mvWgLfyJDKpm44i9N8XXb6OLf4=;
	h=To:Subject:From:Date:From;
	b=DXQDAMRqAR4tAA3wcq+/msTFX5NdUhIhP+WahY3BUBV3UFF+r5RkniFESBNSk7wPK
	 Bwt2bmr4VGPK3kzNnXaMj3b0ntCCPxsB3hsWSN02iyLG2JEZt7UHskTHeOxZ9PJJJx
	 365yqjnI2bMifu/nW5brsJmJAb5MMexSi4/p8A7YbDozaS/Dzq7FT8abspSNm1YvAG
	 S7kAYFqFblwcAANxDKKIkwpStazJL88NhVrAiZzigf+V+Gz7ousVAbBwrQ8WRHiBWE
	 kK5vwB/QzT0wdu1CuFPdUJYbNFNY+iV/4gryVoaGuOwUpmn1flXpeRQPIW90uy+lOI
	 GPVFyiqH7gWOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B249FC001DE
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 04:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169129638868.2131.15945904932453563366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c446ab087e8a821ace5bff6b79b736ef988cd7cd4c122e6f83607c977dcb009f
Date: Sun, 06 Aug 2023 04:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691296388
