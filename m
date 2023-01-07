Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBEC0A47
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D030C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673121087;
	bh=t71ewwAYCtVeF2yyujMEEJWb/piZ2SAM7e+IJodbeso=;
	h=To:Subject:From:Date:From;
	b=RUWeD6UEYpjDI32mUWijKdvQv525VkIdRGVdU0wvXcFV6oiXP0kBrKI/S7Er9m15H
	 uxg/BuouefU3KIYGHoxsWRLjtQL4Hz01XecCXykyolEtKa1BYj4c3Lc2EaukBEKRwl
	 0p3z0PsueQlo3q7od4VI8J9yTRAs8Ncn7C1YuEE8guP6qxuDr+L2F2YEEGtGetlgSI
	 ILfencJV9pbg7Zw9eR3IaqKzMqI5xccBPtqdomqaNXiRWYFyHld1xifbAMsU2Re1iz
	 ckxCLkcS+mKryFASK6Eqx36T00loCLS6iTkfFPwDoxBCIepu8ftuOrnD1h3zwi60qh
	 4iXPRojJBYMHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68048C54EBC
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167312108741.20145.14139876356085119070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd3a35574ffacc9d851ee12136d9ea62796af4796dfa5378d953e4e5dcc2ae8
Date: Sat, 07 Jan 2023 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673121087
