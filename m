Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC41B4A32
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 670DBC433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663769453;
	bh=Ki+SEmHM5/Jyvuv+bXrbg8NBN6SvkzzwS8aThfnbtjE=;
	h=To:Subject:From:Date:From;
	b=X0XgFw8o6ToZXIE0m9t6YmOMKI8Dv//Ay+BS8bknAweAneczXJuA1bXUn607wx1+C
	 0OSl5H6SL5g55qKXCV0VRz+AhYx4E2QsoeOFjQaGaFrXGliNfwB1AZ+2rCw3orA3/K
	 jp/VLXYeMELaPrHL0ZPCD2rJdsN2frwUGTTCNyXFEBqQLV4LzCcuUbFkUuwe11ix5c
	 9b2NzLpKtYSmjVvjQ13NNcelQOMHZcfWWXTncWlMu6mGCgleAUemHmeh5sKhgg9hG1
	 SIELd/HBBQFGHFNGHysp/jzr9TId1LYqpHQY2/2I1cGKjEhz6m++j76gORhSEWAnA6
	 0HCT0uZdajzfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F7B0C6FA90
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166376945331.29560.17538409077482379026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7337b4591b212f36651195ab756a462ae24fdab3b6208edd925b23a68862b2f3
Date: Wed, 21 Sep 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663769453
