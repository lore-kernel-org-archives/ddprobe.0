Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524ACBE40
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 21:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F3FC433C7
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 21:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691358788;
	bh=fSAecEqLzmGbgUv2cBt3jTxmlzyw5iHy4qrcPcmCaa0=;
	h=To:Subject:From:Date:From;
	b=FpCHj9+SbPlcvr8/ghjAk7+QdPN8hiwiDetisglRc0TojfPS9Xc6jsDCkTw6FFSmc
	 2n7n1cYUfRpZLcFCHUekeMCxpig2HzdMisCycAEHzdJHkDVhXG2Bay09a81gSoFLW6
	 dRxurm4qGskYokN3NFOPtooDHT4XDQOzj4fPB81G9Y32o/13wCNeP3ze9/S7LbQiWm
	 uwIswVP5ol5CakOxe078OyqGQ8yLxFXzAwuQ6iBD7anHhA8Dr52H3/Z0NfhAq+7SLL
	 SyP1Is5vjGfT/C5lHf2QtEKE8bqSdxzZ4Ja6vocvzEK4zn6inQx/15pgA4ccvb0OIv
	 OBIFeZy9h8N9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB987C001B0
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 21:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169135878869.2777.3672574093774134820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccfecf3624b58b1988e2cd7c2d1d58ab5dcc5a4ecb43c4baa085721d12e319a
Date: Sun, 06 Aug 2023 21:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691358788
