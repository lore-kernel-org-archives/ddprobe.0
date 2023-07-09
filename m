Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91AC6C12B
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 19:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE7AC433C9
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 19:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688930828;
	bh=L9O1H74Zi42fHBFJPZX6Yh97W04GGAKdu2cEae/H+gI=;
	h=To:Subject:From:Date:From;
	b=tnivSZM+hlFEtG34cAixy1Y+noFsIJGadanzIiD8I3Y6nShAaxtF7/PZIiwffL55q
	 XWPfU4gyptfzFQKxlIIUwkNH4/Fh8EgDiUQlGWHjCpgUrLfHgjwoUsYdMgJMeBC1hz
	 hXVol1SSXcYYlEtdyvCqIuV94Xv8/CYvqKM3Tg4G20a6RN7TvI8Pl3bRRxzv1Rl7XC
	 NqHAYyYAKtPck82P3LDHMnfUHkCxNurXAxGCUVzIKGMMkDuMdDh9HITQ20bobJqGqs
	 I4/6X2OYdmK9PYEZMZOOVLJgBjqV54y7qaOQREBKuZ0cFnT79YnJQyaoV1i6eEbcPn
	 LWZAo6tVNFOuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF5AEB64DD
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 19:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168893082876.11730.16605560321651336002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c850427630589e336b6be308364062bc783adfeaec122f579221fa6883a475b6
Date: Sun, 09 Jul 2023 19:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688930828
