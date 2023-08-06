Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E92B1C26
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 05:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BE2C433C7
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 05:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691300588;
	bh=jb6tnfZHHIhUC9Q1S43I11zZsKAHLUNq021PFRbU0ic=;
	h=To:Subject:From:Date:From;
	b=s6cw+7LOa75ECAaxDfxyNzMyw5dQ4yucsAhaBZWMSLpPV3PyE8J74WyeJKTAUqGdi
	 XswWRyINCdol/LO24nBy1aA2FIicFz9XF4DfIpRRGEJkPI/ZRLBvQqhrLwK/1mkFEt
	 iPUQO1Gla34YsNYgVSCW++/uYdqy+G76EHrG8c6GKXKk+6BYHEnydb8gjcYsoMjVDW
	 /iWHhFCBTiOc1yKU1ilDd+HXr695C9IF4x/f/Qdf4ROQZQKVQwSg2/ZTOmQlZg2W2n
	 7E2FOHPULlwxeUsFXZwGwDVWiJr6Xt6hLLiF0tRMilDicewJVmZuUnSFHOO+q/7GBs
	 SLnN0L5Qtle/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DE5C001DE
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 05:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169130058868.9760.15744474936593893402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852416e83c389348172a474976c3a4ca07b4f347c15e9ede02731922bb0a9330
Date: Sun, 06 Aug 2023 05:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691300588
