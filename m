Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC4347E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 908A6C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671574287;
	bh=cBeLqAUn31jSi1c8lTodhzPLOggo7sfIJxwnYSL2UEY=;
	h=To:Subject:From:Date:From;
	b=GFHZ+VeMjMqxC7lqq8wyigsDEx8WXYJnGHNYjPxw1uqgYaMz+yYIJMmbc43cHghe8
	 arfJqycv6GirynXl6DL7/Y6YMwDgAzI1VW8jTguENX/8wwP9txg8ed15C7548w1TqC
	 aXV4fMnF0TOgyvn6LM8NsOalTvP+0NsHUg4+BU7Qh0NB+If2ctT+crzp7VdTLdLNyd
	 KwWjl75jsg+BziqQyKYZ4MFO58yzcmu7twLcrX3p1D8vTqp/sb7qzyI9jqDn17aiU/
	 NKnaXxuIgtHKz6A9QZ1n6Lo6MOp2berM647LpsSVpU1YjhYR1xvaePX86HpBuTfyYE
	 psuWeGza9khwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73222C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167157428746.31733.17381364268274881755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50cadc17c68ed3a928b5ac47bdf20b7f3a64c7fbe3e8e93cf4dae1b7e0f8c5a5
Date: Tue, 20 Dec 2022 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671574287
