Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D23F20F6
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 18:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC376C433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 18:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684607946;
	bh=CUPQRUrXNsosdyVe5+FrejfnF1pDACpU0Oo+pxGllNw=;
	h=To:Subject:From:Date:From;
	b=rFfZ/LPGDFx+OYJh1Ticd5NWRPIIryRjvkOVtRcNWXaS5445B5tkiBjg3jMuwnJbX
	 MX/Oe1/xW6GXwg+Jy42R7Mh/UyfGZhCfxxT4yDuPTpTRDoV8mon9q7Pf4vAZA98eSo
	 3Ah8e3R6wdqR00/kTE1dklQZP78M53RwKzxQRmeCsGR55y40ETUOxAt68ZwcoKvWC8
	 NzxR7Qt4zxuALRo8xkKJ7BdqdODvG9PYoiKrp62wIKij4fMyQZ+GRmV5glBux9ngN/
	 agknt5okXCePC80AS45pvzgzURieLNlW2yHuVqeuDagrxW4s+AHiskBDzZlFhGO/wQ
	 MIUmPSDGxVwlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE28FC77B7D
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 18:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168460794577.6130.11971516301796718394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d11353735d31760b92e8d4a4e26711569066bfb9d52518fa2dd81032ee84cae
Date: Sat, 20 May 2023 18:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684607945
