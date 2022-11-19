Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2391630
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E6A0C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668845454;
	bh=zPCUs552LCktN125uvLOLq+fzReEoOohLBSQ/iC07KI=;
	h=To:Subject:From:Date:From;
	b=qpQIfbluAVPqTDS3dD8+ADDbQd/tIwEgBLoiaqcJkop3rzMr30hnafS1ZrHdJVHD9
	 EvE2WtCDV4nzgR4nor4fzYc1I6I4COTrUA29QV7cMjnehfEB+Y/qEmyGv4tTIGYryf
	 DOwOhTsujWv4mTm3fEluoBk36axhugpjs4XaHObzbL3um1SfwJlJiaHDdexyBYPMVR
	 PUO8jgvhGcfe5oIyrlxNwbQpcbtNcEHaBzk333pKQ4iQELlo6J7O9nl80R7tgj20+i
	 7N+DUrCqp0u+dLxRw7lvBvEV0WvxTCexsHhZNagzU1khczb4Zl8DcgM1rDHLuSW6VE
	 z6sFDwJHgk+mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5268CC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166884545431.13561.18180603650962268189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d81d32e50aacc761106944c5429ae97e2f78fbe6d5c4fdb7f353ae56b5c4f8
Date: Sat, 19 Nov 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668845454
