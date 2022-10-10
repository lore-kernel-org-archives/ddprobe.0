Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B35666101
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E9BCC433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665443453;
	bh=g/R/0stelHbaRizrcN7ENLIMaaMTXjiJmoVd3W357cY=;
	h=To:Subject:From:Date:From;
	b=anDoZt061XRGUOObSLHQ/PinWXTyBVRufGarG+3ulgOa7xif3i7YhoC0+Dh/FK9jr
	 qXya2CgmGEp/hgPtatUbp3dYg5nd+IAntAOtiDa9hZqsPVu71bykeJau6h54lzFU+k
	 5QtEVJEFm9IwO/yu458g148ef1FeRxfqjSiBzd3V0gC6Cz91L+4+ZYM+H4W0+BmtNP
	 4jeEjG9aQ/fimBsLCoRfa178ltbHzGbIIcsVonhcTnFup7iQGhDbYDMxPK/zdRbXwI
	 Zmeglcbse4ZYaBhL96vq3r9+ytvm7J+gjaaIVhZsVTq/dvKovQAKeimzDQyzH83+hb
	 n+yRMNwOHmk0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50909C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166544345332.2263.10771816646406232636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afbb11e9b54361bc2a22c9f96ed1e65ac6caf183834e7e9b3f2afd3bd4543ad7
Date: Mon, 10 Oct 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665443453
