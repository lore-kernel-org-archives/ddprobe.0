Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF9D2CA6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CA5AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670710287;
	bh=fNXCRLO2Y6mVumUNmOke17xtACSAp5GBvNUc4ql0HP8=;
	h=To:Subject:From:Date:From;
	b=Bo4tImBx4wpLRyWqsKOi78DCAiiAcOpsZBDsiID/i1DiwT/6XiL6ujoR9OFO3pVQD
	 BpPTKbBDqIC4IpcL2Go4yrZDIETQNnJWEs6cnm6CoYkmbUhqcUT2+k2AAlYuGT+KVk
	 aLwp0bwKpV1xpbwLlZj4/UXCkgjhxbpSv7dlGJprfNYGDDcUMpfPYlHvqCsmlKsST+
	 SqGh4D7DgtijIq6dUZ630o4AfPzw/bufQog3dJSvbCB8mQgPc+jqpESKyGiex/TDB4
	 9CytMlcKmLh2GfPwaWE3OwzJQ5CF3ODHrHaOKC89p+SMCqu+x/YrSPWH1IKNkF3L6b
	 Ox+fHMrTsUbcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FC42C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167071028741.18016.14974802285127304971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1058026e46515082f2b4cb53c6c3e9f0c25825cc6036aa8bd46bf974ea4af095
Date: Sat, 10 Dec 2022 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670710287
