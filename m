Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA248835
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 17:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D871CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 17:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680282125;
	bh=UEKJScO3mKyNzZQ7o9g+3b8+sykWO0eJ62rRfhmRCMo=;
	h=To:Subject:From:Date:From;
	b=RXnlgF8ALp+pFt0P8WOuAsI620k0vXr5V+SDvZxbN+qtA4b06fFHGtubDtNalljpk
	 qBOpbe1wcz61Hyf7LgYJn5mIrOF0MMfQKiiKUFDE8wHdVzkYRfzKfSHd0FXGBFcjo2
	 1vVBWqgx+BNCPMbgc6dWxY8LMBlZJl6sNhFJ52YRDSYqis0qlvOd33NjeIMlPButuK
	 AT8lVWyf968pL4mT8Kzgy99H2tq8/fhxFlc1W8QVfo9SLuj9PATzabYUnKQ3ag/mHb
	 bSXgahUpUSCozqZiXoVfGT7rstG9EPFWQiLfq5piJUNruingAWtPTbPiYfJcnN373L
	 5VI04BKVC2bBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B91A8C76196
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 17:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168028212574.13140.16591875874098689166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 749e5408ba300e7987323a0dc85504c69ad118afb10c3d0769cd47e4d4cf0a15
Date: Fri, 31 Mar 2023 17:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680282125
