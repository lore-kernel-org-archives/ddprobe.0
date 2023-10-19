Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C8852FE0F
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 18:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpUXW3/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E90B3C433C7
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 18:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697741892;
	bh=Bsz7nVFiptPR0Np45x/GwjjJv4dYxLvhJtVZS6kIrhk=;
	h=To:Subject:From:Date:From;
	b=kpUXW3/1QZ4I6sp3+BVbqS1STaC4A94NLn0l3uEbRZJD5Qa64xG0nMgeibIm03nNG
	 4ztyMt5QzVoS0p9czLCCX64GYCd6hoAEzhP0eYnJ0DXfN8/3zXE0i2wTgryOGOwAv/
	 kKcDbI5txwxPFeH/TZXqzmxQAHguF/RG25l3wCqLExmbwLyZpdxlosyOOhoBCtAVNp
	 gIVvfPKPsLp6RLVetqppLKmpjsktP4iznS8xuy63GZ4m2BZnXPWi2vvDLqliTM75hN
	 hUz19ruc5NYMZHUeJ93CMWQNaDiTwF+ktHUAS5zHpDzljaK4V15OxhlVADP2JMVYyB
	 dZrqkjTz7CUqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE142CDB465
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 18:58:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169774189283.3393.13187482147461758342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c06f3fd78279b0d43dae5fd7d46012e78ea28dc10f384639d5de54d7b43d7ed
Date: Thu, 19 Oct 2023 18:58:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697741892
