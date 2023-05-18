Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429A317F1
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 05:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16FCC433D2
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 05:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684388165;
	bh=bb7bblRU/O7pvX6ek8uT9t2YIEEMzqQuMC5DffdDN8w=;
	h=To:Subject:From:Date:From;
	b=E5SQ5Lwtv24rqLrboyG6JtE2rY3J3CWeq5cW9/U79tTwqhp9aQBLTotGDwLGmv75D
	 MqJNk4QDlWZJ9xuopVi0irAuCUr07fESg8ffxMWY6R0BYavasRBvyqdq9oDpF7oz7m
	 5ttajpJ8qk3YNBBdEFf07SPDInmXlRIY0KQOkUIrXmSpICtnqJAfwxAfTlgTejh5So
	 jczh2JNMQTERvKm0vYL+e3fnnWSI3+1EOWIAaoSGbiYAA4DGaB1swy7orkCY4wOSNP
	 lkZAxIbOsoRxmAQirPD9t5wuFPoP0jOZOz1RE+Vty5FI4cce4kvl8yC/ogHQgbbt7v
	 k15zdPmMQKtAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C356DC77B7D
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 05:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168438816577.15063.10679947947361219987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f888fedd879080c55b47ecfc4bc09e5daeaa6d0db1e7cdb8f2019b25c5f951
Date: Thu, 18 May 2023 05:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684388165
