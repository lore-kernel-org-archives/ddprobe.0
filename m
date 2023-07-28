Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD22214E1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 16:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE989C433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 16:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690561928;
	bh=DCcDjcCpisCRq3B+hn9GW42r/zlnsIvk9HCwr5VRxSU=;
	h=To:Subject:From:Date:From;
	b=lsSDyozUGCqHtxdYz5TyuLr4OTOdLO/jQzkC+JUNF76cx3Ws/QdJ/j419EgBfmKAF
	 cDI6n3Mro3nv4R7Vg0JKJ5/shoguf/xAKq0MRsYvDq21kDMnogjoCpUqLpPIbNhJ3Y
	 PrLB2cXctYBa3WYP/EOBa8wHhyYbZ7F6EiQNNDVToUnluP6BWdEL2M7F9u9k6rNbct
	 UG1uSMkmP4EA1CcmDycBRQfeUUhQ+7pToKbGFxztZO4VjUTuL6vL/3x9zHBJZFpSEX
	 P+44JbXubfOWeCO3GavNisxbnijKEbBt1d1cfezG5Ck1eXyAXNutyrDFpcEZt7yXq+
	 wk+eHMAviPHhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0516C001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 16:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169056192871.9318.6353899556926788469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52673f883027ce01f0124363a97d66496d070dd10ecfedb185f4591d43dff1bb
Date: Fri, 28 Jul 2023 16:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690561928
