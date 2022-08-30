Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C747B2F34
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7028DC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661884853;
	bh=dS8fhmmrjDeLVcDGq3ldr2RI0WxIM4VCf+v3TxcRz3o=;
	h=To:Subject:From:Date:From;
	b=bK3qChhlV+NElZyOSrtPX8MsyZTubhhpu/5Db2xK+YSKvNV9X9C0X5VMQCkTPm/pe
	 QASD4OKupQPsfNHplfcuzznHgZJJq3Yct1FWduaNWc6KUpglZzuM6cS4dCLhC/psfa
	 kiOVOzYR7Reu0aFVBxgX2tBe/xmdCVufoEWCsW4JerhwoLYpT8oLtLQSHetciU+ZkZ
	 9JJXJzMJx6ue9zOc3kvnnT/TCg2s8Gp6ScZqliKBTDF/6crzFVSZRafkxyh3yZInKn
	 N026c90xX2ldXA3Lm2ZlC76umVe25m3FYw4cl0NJbNn6wxCAr393R17Qm1VnvHozSB
	 1+w24yG1+E3QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50FCAECAAD5
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166188485332.12382.9776673966345259498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3521e928b69f75261d9fff6a7558209c4646a3dfabfd2f8c0829b2be684ab810
Date: Tue, 30 Aug 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661884853
