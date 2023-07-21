Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B6CB14F7F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 10:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B57C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 10:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689933728;
	bh=TT3RQE45p/VOmMSsZqBQ3pHMdciYX6zW9krIv+xotX8=;
	h=To:Subject:From:Date:From;
	b=hy6X+/vhYnKXQTWUTZ3YzBXWUdWzs60jvc1WxXR64mvPw6PJ8CyJje9uCodhdTV1x
	 9gSeiDxrD5Mb0FBmRz/Ktrm74iIUCwD3qoyQIRFwJ6tG8kNmGuotXDSZty4MggzykF
	 odZGsVuodpoksNv3W0XdINjdQpd4uIJTwaUwuua/Hrzq3q1zra+Wizfq2NqBzilKiS
	 KzJxIYMUwT8fjoz2pxu8jIc+eAHOsI6Z8BrLnIDJFZK12RNoICoc9l/BTJD0/mibbh
	 rN7V169iRm6mBK87Me8v7GgybluRi4pJJahgfuEpzteofun3sp2kh1nM9tuF/rc6VE
	 f8uBDk4tMehJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC565EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 10:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168993372876.28783.11311271608673137262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce0ebbde7cc6289c3cabeb9bb35aa969d31a7cab76075137f04ec13df41ba8cd
Date: Fri, 21 Jul 2023 10:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689933728
