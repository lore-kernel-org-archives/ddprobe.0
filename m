Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B0C23AD
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 10:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5507C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 10:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688208848;
	bh=DRbraA5QvDr20LhgjlzWJQs3e7cjLB8GHWrw4wLg3XM=;
	h=To:Subject:From:Date:From;
	b=r7x7iZKszrUAw2Gxk2kA6SZmvvRzig/3w7T6zFkIXO/noOB/aSyAu3TVx85Q5t4T+
	 URIN56x3WsDtRZltW6g87MirvYRA5llRR/BgjZQCBHUg+RVpFpJIL3QHBpsxDVUUle
	 bRsonQIu5W/lB/poXuKGke24GZgQqgzaRaeWUWFVAZXUS3WIYrpsI0s9/GkOfsjsTU
	 2y3qeeqp75x4QgNuW6WFfYp4CKzkM1YLCFcfTP+CYaGlGKspSOJtd3oSkrH8fLfZA1
	 dsXtl/tA1YKrBtfSNpRnOUWXEgkTFCrp8Zm1ypKhlNowvB21P2KXPO8J6nVKEMqO+7
	 TpJvhgi3/E2Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A61EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 10:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168820884869.16693.6757729615169999096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ca1d8a8a6d1db1d827ee5ef44942176c24129cac6d2e86eaf659a4b21b3e41
Date: Sat, 01 Jul 2023 10:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688208848
