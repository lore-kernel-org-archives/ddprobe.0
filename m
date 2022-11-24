Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B742916
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 15:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70E7BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669302654;
	bh=8Eg+43DMpzj6kvL6H8xIzw527R2Tto/gOp0pXwz9LFs=;
	h=To:Subject:From:Date:From;
	b=iOMGRoqzNcP4oPw5zlPBvl7cjFXwNF8DlmE9Qw2cn+Ehi11Cd1CwPEalgEeYMIizI
	 FipuBwAOla9J6jUrkITxNechKhF8KoDGAKOKSLtMgq9Q6+ElWyU3XnwTkYnTOPXbMk
	 kCTgVBbwu2aJnr/glkVvYghTzLpdlvlYea8/XkKX/mLMCw2M5KOzcfN1dAT9jyAa+b
	 Bedfcw7hAsb8EdGrASCfutKfjWn6FkSyMCJFXlqKR7mr7ZgMzddG3JpKlFH3Iuelpa
	 HZGBzzaHU1xXiLv4rnUPTbVE0Nsv3U2BPohCpnYkVeFjyrX+2Pm0bVbVjRZWIJpSUW
	 fCq4BCa+JgabA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5835AC433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 15:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166930265435.15868.14743891890871762480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dce66dac7106fe0c08bec0d51ffe4236ac118529d8baf8ca289dcf79e3a7b18
Date: Thu, 24 Nov 2022 15:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669302654
