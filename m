Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C597D4C71
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F686C433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663270253;
	bh=kgD60wdKNVb9hr1JJwmh7xx2d59Fqvsb3FHMzk+UtRE=;
	h=To:Subject:From:Date:From;
	b=VemCL9bpjGSJrA2DUz6Li1CaDoTW2yv/Pt197JRfuFyFhZ1QNDhrf+CyY8XiLD9TY
	 Qt5fa1V1lX0wlHdD74MiuqwQFhmFrgrpduShcMf51Br06RZ3XGE9kFIC+uLIqioO67
	 1Wt8s8yHhDaIlz7hyd/79wwRjrs46LfeVM0q6THkH0fi1ap99iHdxJTgmr49RL3Kzz
	 IuVdS5nQ9EzSIQlosbWfbjFqKyLsYj2G14W6QtR67bfjtyUOOUahGjuwLhmG/Q9sWT
	 aEzcaRzMBPHidP2bMhHFuCKuYPAFtEM56ItJb/NbVAa7Lmpik3aI3JBTeKtoVyeptf
	 P9Tru957ApDrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54DA0C32771
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166327025333.29639.16811861553576008937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffec1f0e61bafba2f56e93c2dc198d2774d96252ae0c565651f02695d635f72a
Date: Thu, 15 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663270253
