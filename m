Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCBDF7B
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F244C433D7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664884853;
	bh=eIdQToWVMonFDhey4M4yBy3Zd8vJqjEtJ9SGR5r8f6E=;
	h=To:Subject:From:Date:From;
	b=HwBQIYg6A5CCVaZVUei+FgnMfks983Nbf7j3ShjFfePKg3P9TR+rEh5BzjQyYwbUy
	 tAO36azxRJ3p76nt1kSHmMxFiEahDwXquBhmLnKNWuEYKUyJ413y93vmEpyfmWcN2A
	 zH0Uhlnlp8eqV2lqi5yDleirAKV3Z9BBw/3kR4llzabcOi09RQ7mUw3NRNVRHKPiAS
	 LyjTNeWYvQ/ZchLt/wsl1HeQS/x7QORYuLfjlaKi3q0t7e0he2Ffeef124Wsf5fadU
	 aOOiU2Vbklwrqo6woq0Bw62l32Fu2VksxOEJ1fNxVIayEs19JC+KJ58mtRe6Lrg2mH
	 tztZufNxlg9fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F80C4332F
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166488485333.23810.5777828271396020874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baab2879816cda1dbf030cf772aad3bbbac92df442a458fcfa9c550f07696305
Date: Tue, 04 Oct 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664884853
