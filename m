Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD915A2D
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 725F7C433B5
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669048254;
	bh=jiRp3VwJe5xzuEP+5ltKR0n32+ynA/WcuyxtPdH1rvA=;
	h=To:Subject:From:Date:From;
	b=sqxKJazlyvFBk6nVshxWqq+kiG9R8hKJtKjUGebyl6JGLBLtQxPHAPzQug2DRGFOs
	 9QIa5GmhzfzWaNj4Fi/fc/AvEvm9LFHdB3Apspuq8fYH+YyL5X/yoRsEUFAWHF3lun
	 wm99ShCraScl5vHDankytqWUPVlbgXBu3KVvyWa+1uV4axXV5mKAZoomrmys22VTPf
	 spv12Z3cSanCdhjTg4chtlbIkx72408q/yArAFWreEdHOF6wYfmSBvixL5BV1ABfor
	 /ueeONbBtUzl0vpMi0MtXrIMbHV785E6GZue+q/+f8jh90PSGY1xfAa0PErtOxWY5b
	 jvHRsF3I6nnfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C7B4C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166904825436.19773.18108784302585626723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38fac08c3eacaddae535da7af5963fca62331652182eeebba49d867bf4473e35
Date: Mon, 21 Nov 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669048254
