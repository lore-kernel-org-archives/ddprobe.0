Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D58961101
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 717B4C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667609454;
	bh=+r+3IugQI0E5QfYvfYb81tnGmJf25IeLM7jm99l+8cs=;
	h=To:Subject:From:Date:From;
	b=gbm5hId96Q/J/nht4DTRRAzqtro/sg8/PI+YYRFuLPooowRolVdijDWBEgSHhoCKZ
	 L/M1wDYsvfMnF75ByJ5q7qhq3YEjMZpMw3mwtmPE+KG2yv06olwsiz1UWb1/o3hoAt
	 ekUoZ3PPmI63Et3lcrZ1CJPDfZg18tprCNaAUJzNEy4nh6oc3eji8o2k93a3+zaZrZ
	 ZGUjNYRAQkucQ/vb//gVt/EhT4b/VTb/0+WRul+xglgCDEK/oO8ryO3UKbuKlNmHeD
	 qjwd4hr1WQPmQnmsUHvHgWfD+ScltHI3TRlAPT5g4o6iQ53EFvAHBGlh6BzToIFK7P
	 pFV7CYo9tioQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F55C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166760945435.4679.470201198715295288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9429227be759db21e91d36285b079c0526dde49e06bcf7f45d9ff8934d3d6ad9
Date: Sat, 05 Nov 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667609454
