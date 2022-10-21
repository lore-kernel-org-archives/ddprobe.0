Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B39C07E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66D06C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666316453;
	bh=HBWDCV23v31Duur/YUbAZhUZ84qUE4m0nZ2BuiyLP60=;
	h=To:Subject:From:Date:From;
	b=JSNaLMZmpTmmo7UfL3g/7b4ZP6ArHbsxdlf5Jw+TaOveIOjxghu7b/8iPVdDnFuTT
	 sUe8R43r+77JhZRV+tXl1Y1Ge5vuH6V4FKIVqlB8PuZ6V2tnT6VHo1D8KN+FvX4+xa
	 eWbfuReELhQV5x4o4oBMmM2ybuYkqXB0vihBWh7EL1d/pLTNNOKPNL9STyfpTmmJ95
	 lJ1JO/PV1COFzREqmD5CsPLWRpXXlPPA+V4sRvaF9UFlujNsf7iHDCsrqK1DLWvE65
	 qRj8UqGEd3f4WqWA2Zg7tDRNZfUIYWGoaMQk56Dur9JN89O04Qr1b63lbuef9jq74T
	 mVlmNXMY/gBIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53861C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166631645333.26210.912188415419944972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 774caf016a06089a9129572c7c194053ee9164e3bf966bcfba4f549c1764b346
Date: Fri, 21 Oct 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666316453
