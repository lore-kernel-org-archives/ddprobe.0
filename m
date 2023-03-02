Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404055381
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 12:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3253C433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 12:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677759965;
	bh=JDqYTDdMkTVMuEejuJ0F12I/z/KHAxXrD5U3WfPgLTo=;
	h=To:Subject:From:Date:From;
	b=kTXrLh2PD6toBx6Zvj01Hdh02fVWUcgfFzRX/X0kAO96j+y+AnAoG9ewIdQSQdkjC
	 +YpVidZeshJgy31OGcS/1EwaQOraWf9YPrb7AewRMjDkNu1t5NmAuzDJRRspt2Vd8W
	 s34D24v1O701vAgEl2bwyCgo9HvFuNeZrYtvNIqbs34p78g8prIx8q3iu7Ts8bClTp
	 ZkiaS5X8EuUroHqB4J5rHIzSNADClE89U9DCuiB8/he78CxMgrQvQxPzLC/x7ahkKW
	 Y2tz1a82WuVLXYXJ5wPJiDPMinAsG4Ap5P+u0k9zoLC2ylo2vRo8o4tNzzLtqiradP
	 wqfXINXeXrFhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9489C678D4
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 12:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167775996575.5341.2735363293898774518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1061847f1cec90c750d71e0e3a743d4f0cfcb1a784c8a7700cab96c78031a4bf
Date: Thu, 02 Mar 2023 12:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677759965
