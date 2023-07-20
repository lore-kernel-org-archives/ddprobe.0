Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB3A1C01
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 05:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5105C433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 05:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689829328;
	bh=oU1/+CRojIVOPUk68GfmWUInePd6Xge+p0/Zxhb5GwE=;
	h=To:Subject:From:Date:From;
	b=kWcAHg4p8rvd1ryUsUWvy+R1CyA3uBaGsZ02BosGeTaCBU3Onduef7HkS5/RVRio/
	 udvrCQlbxjS48pWfcOHSJQU7PtOmQgTLsMcV6mkJa/lxdSvJBduF9wD8QabGC0AZhr
	 fB1wkTmd6Dzl8j0K/XpTXF5bmhWecFBoXRSs6w9DoIPRlYaNqR1GFvSWQCZeJHX0QA
	 onzj92scunpRgxc/RmF5yhK34aa73JXaX3j1hRoPgAHA3NkzJ7Y3dLIchpz0gDgTY3
	 QtGJSW3T5bx8ikUXqlti1vQ7HXXOKoSbC98kT9EPX1WbtIGPjjjADiyafbEplZtWsu
	 sSyR6q6PbrXig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F30EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 05:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168982932879.6630.1468545189362164240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7730d50f1abdb12b18b925c68701ec92e9568b6dd693e48205e5c5b691253205
Date: Thu, 20 Jul 2023 05:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689829328
