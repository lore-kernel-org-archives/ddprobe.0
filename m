Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D8A7E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 701A6C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669519854;
	bh=tAna+Gp2mdaKAfjesJgkq+mGO+mElPSpuObegoq6guw=;
	h=To:Subject:From:Date:From;
	b=PlKFJm76Cml86Ac5oWtYjIlxTuYDbgt0nb2sMGfkCU57U2UVpFOKcvPMNULAnxy3s
	 3qGGWFNWPOQDJdgVCdFOn84G5g3o5A865qaXNDEa5RcIP7HE4EzRUrjDVzeluW2xXi
	 WLVRjla5ZhntFxmtnJZic8NVT6Spoau6hdJKV/Dbm1/Pm9BMGpiYGgsFmXFGHN3UI+
	 7ZdIxr87ZtrwxSTPskBVE5nZTBC4U5fiI+UiDTYBjSCFT1t/tUCFcGLaK9VQjUNN9U
	 /Uy6fJjk+4r4pwwtJU9BiceX296hLOVWGT9XtHBelZBpp5mcp6vW0FjD/paVEDeAu9
	 CVxUwADFOmLuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56491C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166951985432.7653.9681188146400155477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2473fbe0fd281c27cf89237f178efc4fe84b52bd940afde877f99c9436b82806
Date: Sun, 27 Nov 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669519854
