Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A7A46AE
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 900D6C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672434087;
	bh=1eeAKKUhMGJeHiCxPoMqPHSMyaoy3lMHfXUUsTR2xZQ=;
	h=To:Subject:From:Date:From;
	b=F+IjyubLFCgRGavul/KsBB5Ar1Al9OMABmf+bhhLp/cKqLSyHShV2ghDOFaAIx0TG
	 RWz+6cxC8mwTVEcPefn1SNAtyETMQHuTmsT83Qq99cWs4Pn4U8A96OGhEOO7Ph9YZt
	 Lk8g3ohzX+GWiYaybbKIJYxYdM6Xqn6B958g8qfpgqOQKDRA2TyQ3wrfC1ZQOjUh7i
	 mBWdokZ3/+n92YhBk7v+izoN5iKcwAMU3h152eqhSpDAPp0FQpPRqGAkCJzKvcIzcn
	 1z+QBbbQ7KUxvyown5Ffa4XL/BSRc7jWARiK1hdkYOT8QOPvfLCEDkMEgJzkHkqRVL
	 x+oCBnRqf6jsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CAD1C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167243408743.10687.12509800317312544274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dff4e33e30570a42ddaf6f0fe52c6e0eb2f43ec4f205a70b065cef0a4e0a5d8
Date: Fri, 30 Dec 2022 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672434087
