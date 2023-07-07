Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94CC42F4D
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 12:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 081C1C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 12:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688733429;
	bh=gON9D/HGPchL4nBRSheSABJ6Lj8S2G81uWbaorUl7Rk=;
	h=To:Subject:From:Date:From;
	b=f5aD76YZcQsNyVjevrpWkXtp2ipjmRnqoulzTV72SAQFIODn17fS7f43yZ1SYeSuK
	 yZbRyZNdxC4iD/FQjZ2NuSDJu7wsuC96pS+dNvgEgic6CW2/HKGDLscEUKgOBcDuoE
	 jxOVEexM6mfamHNET+ZVo85kT44rWnxHMNgHv3V8wxHBw3db50qsToNkpXI8B0RmRq
	 7VRm1JX4vcITj06xdRBF5RE/f6rK5Wd77ZBl+lO9DTZxXWR9XhEltCdn9+2Cg/Wwmn
	 KvlqMxzjwrfO28hbXm/Y7DtxpZx8SMK6usHXGszSQKa3q8m04UISkD+VUYISTiyb+S
	 G/a9q91pueTYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFCAFC0015E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 12:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168873342889.7061.1659074897910364685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a33ae98671feecc460d603b2b8bb4a0d8db327c821a6dad6735c42b4964e3a96
Date: Fri, 07 Jul 2023 12:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688733428
