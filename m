Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6BB67B
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B8DBC433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664883653;
	bh=soSBs9h6nrWodrkWQQNvA15wiD9YfAdN1x2IPNSDLdQ=;
	h=To:Subject:From:Date:From;
	b=ROh3ijIdCXheP+CUprm0V4m+0DY8n3um0mqGIldyrfuaksolyRT7GK/reQH4B3JYU
	 FiEYJUf+q49LWg+rcQrsPgj7I72WnJ8/zwL393sBL7BfdHdVhT1GFb2BT+5HjkJYPY
	 Tz7VyywTPiGCRPS6BjPhuvnk7n21TNL5vXc4qY4+9V6fpN6OLDW7dT401O8Dz8t9lJ
	 +lGlbLU7GqyIBsB/iRpTlrz0WisQwaqO1u+R7KLsw2a5d9osQRhZIXRI1Eu6wXzik1
	 9p3HgClcBuHohnayeLmnKCH1iLwbVOEWFDOJ4fmuqaPzJwtGcuy5fdFJ8j9sfAGWT4
	 CxZ4xYd8Ga6KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5269CC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166488365332.19755.18173240887828005902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f18e1ea0da7bb11ebc41e4fc1d75f9f732b7e6e6035046f8f2a397a85c541f40
Date: Tue, 04 Oct 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664883653
