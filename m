Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F48F7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 00:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A57C433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 00:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674432125;
	bh=g6OOYu3mBOmr171r1SpR2wnDsIBvc0mJ8N33afZBE5Q=;
	h=To:Subject:From:Date:From;
	b=TdsTEHsueAiRkZryMrBQ9UZqn9dXOvq4rqMdpQ2DbtxTpDrSm00ck9ANF/UGaeUI2
	 SGbi1aDnQAtB1mqoON6cTUcd/cKTzB7aw7SHbJfhGA2W/3jfkbyS2GA4NGzVT904yX
	 nA5RHY8wqlTlAhXXymm6DhGjvnEMPbSjDPgoG8n8tOF9lEMnMEGLvoRZUYfZzXiVXi
	 sryD090uXmcJQObjufiWvtZUiY4GSoEu5s4OBjCBWzUWBk3qcDYYYpgMtvFzPfw6/S
	 KmywG9fQTuaQBpjQQgZ0azM6w31MCyKNG/z92CR/yz8NzYHsY5PjOEjpEcO5bPR/JQ
	 hpUZ6737f1t7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D21C25B4E
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 00:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167443212572.23874.6717326079047320405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0af9b252ac1fabf88ea04d4ccd7bd537f2bbb8eef623061e3e015ba6d97761af
Date: Mon, 23 Jan 2023 00:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674432125
