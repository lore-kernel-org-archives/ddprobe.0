Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAD97C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 01:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC962C433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 01:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674525185;
	bh=z2t5n4Dy+zN1xJ4A4EzIFuDy1qBemiLI3R19EQ+Y+JQ=;
	h=To:Subject:From:Date:From;
	b=gnKxH2cjiaWWL/Rrz9iBQl8jKYH9addKGTjdFFE8QgdnIU3NrOhcG62xbwHZ1B5IL
	 3k4/bYtxF/yJ/IF68rhGVX3yo+z87C+CbJCPbekSCUXa4XfXUMWF0khhy+0mCKcjTq
	 rjZNg996+CocnN/DKeo8GzPGd87HEuisjSG6ogToxYQDq/5E2LTzojQUtNJOuwenvA
	 ZlbPTBeEye+AhCbVNWPydhTFAvF48x/vfRGLkqC3X6N5OJbsr9qPf1D4PZFM7RtAqU
	 5lrA2YXjUBOAUd9sYn5hB694HgyijVGoL63VCFkmGavIjXiRasHQV6Yi7LCwVWxfWs
	 m59iQtqGpS+xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFED9C05027
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 01:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167452518577.3470.12108190012704559915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1727004e1198e8e815792b9a5eb5ae5378022185ec16cd2db41b5aed454d92c3
Date: Tue, 24 Jan 2023 01:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674525185
