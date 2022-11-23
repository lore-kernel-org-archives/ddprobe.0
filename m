Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEFE833C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E491C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669240854;
	bh=8ivUW5sTcZrGDoMITdIzsSQv9R+JwLjJvdafMrza210=;
	h=To:Subject:From:Date:From;
	b=nJR9wzLnuYSgnELaDGJMWH7yyxOusUr3dbzoKlfMOtYGxtk2hyNPU1DwgNDP6VJpC
	 if8AGzp9SiaZEGknejq/whDm2RiDOKHpTHc+dimYgqrhOncfkcZtVjloc5o2r8s9VU
	 Zi3g79XJS5VI4wg/ImNWyVdwCf2YfEquFzFjbunPm10DY1xe7B9N4icCJnx3+qSch9
	 o/A/zUV4G9PIDdKPfYne/HxBHrGGVKC0JgWsL93bg1mUzU9YTuexo9LlaV4+xGv/PL
	 LvK6B/wjAM0F6xFgtzbZLv+m9/xcPF1/pccd9z4AL5Z5zON90CW+uzVQie2mgEbRXE
	 w5h840CPJ3kFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59457C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166924085435.18479.17169506810546789011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a9a879517fe68f2b4d7c02b2b5f93e70e9d4acd18b162b6995b4747c0b3d58
Date: Wed, 23 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669240854
