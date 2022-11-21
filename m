Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB59443A
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C779C433D7
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669037454;
	bh=CsYoCYUxbPOMnfhfADwpI1hjCgC3HqO2Zqt5f1RjeaA=;
	h=To:Subject:From:Date:From;
	b=R/f47W0TkglPtHFTGLuAQSX8YbaQcHOPoL6Xj0nzSOaKtG6vHOQrWVIqZQ2aql8By
	 rgyjAivOkEuy8dlRQUk12vg40+146bGmg2xQJAbMb2Ca+wux/7e7FGgGVzAQCEpzUT
	 hfVDHxVsEVj0fli7uLefyoHG2kar6FDv93uIXNi+gWaRnqjpg3Xo9Rt+bq08jsILzr
	 zpJqi3aIWZKRNLpdAHmFnmFky354/o3sS7kivlJXPrHXSbT1tBcj0eMNIFGZOiuTu3
	 YVZlVVUme6v/xI0JaW9hL28/7XENOpyp4B0YrfCxFS/4BmqhMD8a7HliQjBSIWWggT
	 5DxR3Buj4CVBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F07C43217
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166903745433.27340.9576917234713296850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55653f99938b1bd0615da11bf524c6a8f59a446f382551f3346e8323a9b49342
Date: Mon, 21 Nov 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669037454
