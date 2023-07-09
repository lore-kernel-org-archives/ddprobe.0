Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C191FCE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 10:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D543DC433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 10:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688897828;
	bh=JKCCiyHLnvNzbdxpr0dHUsSRWhfxCxqcN73BXFvxkyk=;
	h=To:Subject:From:Date:From;
	b=Ukstk+QptuYwyNKhgznHQT37xh/+p8paiBMmQ3r5sN2WF55KPV5UsDYoQZMgmE64h
	 xyKjLNiwT7g1FiYl9BfKcJySiwDwZKm1htFyecNPQ1o4p8Yyixq4bzY+QXqly2py+i
	 s+F0fBQfg0H5Ob/xQj+k99izEg4WnxIVMRKy5r9LVsWDIEopxpeK8LGqWZZDZ/DlNO
	 vdFbl311B9KFxePil8im4mVcavBDN/2tlUmAVFSWqqEyJtB0voMokE79cP6NI7Mcnh
	 PiQLKuLrtZ9E18u88kJbaR9AQL/pbzQhvHch9GMn6zFNP/ZglmQLxKNQy9Uwjn5mLL
	 HDBgUXnwZAexg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BA5EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 10:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168889782872.13194.14895343398666047467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac7a3525d230140369ad31c974c471df967e90e08274647364b14732e6454cb
Date: Sun, 09 Jul 2023 10:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688897828
