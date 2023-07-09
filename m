Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71DCC5220
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 12:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1607C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 12:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688906228;
	bh=1WZANgMCw3TKW9EEV+3nRN5awmQbqnZuU4jRmbrqRWo=;
	h=To:Subject:From:Date:From;
	b=BkNZOQ7ozAnyL+7dCZz38o5f0pl6wLPfRnnjhZkS3/2HeDxowsVMpWbWkaN+QdRMh
	 Y6P8f0MyAWTEzmHanV4OWmwfYbpeZrdkzh6on7Xnq9zTABcYZ2S6EgFQ4He7d1shDQ
	 fiA+IzG93122IhGiPJ9l4pqsv21lgKjFcL76gTyCFohTV/oKVGm1kpSV0v2RbefyIh
	 seDG4ZpW/s6PFZc056p8V+T9LFVdGOk/iXjm4ju1d6pr8MDN+0Ta+IWBDi7FigAV/1
	 DrCgLcLkmeUS0WDEnyGjq4VBPkJMd1r3tt6OOBo2faAtFz7ARLZPm8GpOmRTWoHXGw
	 CDg99pqhD7gZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5936EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 12:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168890622870.24178.11167976338733979409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c425320ac0d376b54dcc8074e148092429647b853d42beefd36675632b0146c1
Date: Sun, 09 Jul 2023 12:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688906228
