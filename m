Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0DEC33F2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E4E6C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670594487;
	bh=/GwTUesBvhZpmtUHj+OAv8ybm0b+sGEXk+rgUxN8cUg=;
	h=To:Subject:From:Date:From;
	b=CHR/CkAwHytno8uYzPvZNSfj8BVPxj2mG0kP2cDaoQy2oBRRvBx8u7Y5EBpkqsQq/
	 LSg95mOdSN17SgrbjZlAcAlQlsQry6HRWGDoV6Rt1Ssy86hIvDDbxbjvIgF8yja3LF
	 58K/5Zc6kQqOAGaId3IqkX68TSo9sVelq2/KJbtGrE6O1sGQlOqXPdtKa61Jbg49gC
	 tddEhyk0mHmYNzyH4qnc4XinLLrF8Jsdbzs2gHQEh/1IUd13Mp/3txdY/gPeNDBO/h
	 Ug/jXftm2rLcKpToOl3Th75cZbXk2zreq3T3MkRWvz23H4VE1jjm7m5x1WrOiNXi7r
	 /lfDUV7aHcVmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 622B7C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167059448739.20497.3940234468437231822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88f30c475ea8ecbe733d89435f747422db316b37d7a9d8bc6ac27c804e314259
Date: Fri, 09 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670594487
