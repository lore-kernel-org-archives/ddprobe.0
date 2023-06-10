Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A58E1110A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 21:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FCF6C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 21:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686431526;
	bh=fWmxrtbPNOU9tVODh7+D3oPORH1UqbQs2LrJbsCrDxw=;
	h=To:Subject:From:Date:From;
	b=bHjimxnMU9Rv1zAQMx3uRrvCTaiaHMLmn+OHngMs6sUa0WVmRCeelU8Vx7rCtMTYw
	 Ai0j6VdI0BVMUmowG7EqxJZQt8P5NwCP4YYWLkhBlZFmngXNc0yvpIneEJEUP/8IpA
	 Ij7/7Rdg1H6psE71RbRFihypiehlCQ6A+FgJRpDmO29Tw+if13JZn0xY8GT6dGASIi
	 atFaBAVpV41cDm4jJWeCQcmLKO2TOHQwsMw6lkT1HJBFbDr5mgccSmSsRDRmwWoaHX
	 tLeTs3FUfL5nztwfdsoHI0LJ/QxxzKMD9q43lk3ojwNEuDHRdU0Nh8OfktuhQ1a4lt
	 vtygL7neQ7I0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD0C5C7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 21:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168643152589.8204.17433776220619708503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f2044803456eeb12330749f2276796687ae15f3872467e0240cb40f7b767874
Date: Sat, 10 Jun 2023 21:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686431525
