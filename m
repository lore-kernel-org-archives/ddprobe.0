Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576A01F190
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 21:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4DEC433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 21:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692740048;
	bh=UJmXDVL7BlBXyz/7TSzyuyNTrEsjGi0p10U0kvRwgP0=;
	h=To:Subject:From:Date:From;
	b=tXGWmD6AtHEs/F3eY91G5+DXD6Iv2BN7IIHS3Ym+lgebokodPeshO+LrxChyg85gU
	 8DTEWqSDSfbXd8Kt/PDlmul5J1gJIW0BlpR2pZxSIV4fDDKAKz7nj9A6BQt4G78/os
	 Swj/w2y4/F/JMZnBvqvNpcV+S1PM95kJsd5e7NQSXbZK0/e3S4ytkdlE65jy3f2JlW
	 ht6630h5nKzjo+wJkaWcZ/LXEfAUqV2rM9PcOsLArdRXHAfWrmabbuVO4xOBZhEwzx
	 4n2bNbW4A631qOxnbY0Z2IvzvxDd+UmgAxu/7R/lVL2v3KjmhwJSMc0RPImEn/xKfN
	 XXZ/SQO4Z/OYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F8CEE49A5
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 21:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169274004868.23438.9785018411493067145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6470234feacbdffbe67ec6f9005d3eaa585f357ac9c76176f991fc2d0059afd6
Date: Tue, 22 Aug 2023 21:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692740048
