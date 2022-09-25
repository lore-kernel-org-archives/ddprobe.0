Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9084403
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6885AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664135453;
	bh=77iRqtufytK48alkERcR9I3Pwynb2BLoTr60U74p5Zg=;
	h=To:Subject:From:Date:From;
	b=tM4t4lNzgsgJFUYugjvv0EEd3CBTWMaj1jK/THjs+MoUFFC/9JvQsR+Nz5zgiHw8E
	 sy2PVqC0swoXAppU6jRGeNoyLUb1x/+2Xar1kY2B8SlnMC2vbDImCOAeJZvvZEScYm
	 QnEGHUJZiN5BCn+vkCdtkRavqK9muE/WJPYK9M/X/oGdlXkr1coRXbhAPi3EXU/Z44
	 89hEJdzOWHbmShHo7LnrZOtANXPznbbgFiSd+8mwy7jKBjgxr9C/eJ3JtVbKcyAzD6
	 6q021BPbpP5N4Ge2dh/aCdVdKkspR37H06lV1kM9c6Z2kQeeeMiN5npDTCGDDlaoua
	 MR7ZeGkVzSYKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5107EC04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166413545332.13382.12829876151089406006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41832c0d38f04b04f985ca1048a97e9f3e12752a6bc2fe7a400954fbcc8949b7
Date: Sun, 25 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664135453
