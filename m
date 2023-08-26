Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 883EF18D
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 00:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5291C433C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 00:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693010048;
	bh=iqUaGYWpc3Z8ckIs2cnJutBonWBMYwLNGmszKL5iaMg=;
	h=To:Subject:From:Date:From;
	b=QpExynn/SKORFPZtJi6E1oygOx8E/TvfZTyXy4dfIeRKnXS0LJXhz3qNrb/lFtuW/
	 DCyXScsATuFPezU35j6Xg9XXMhhPeWnLXktL6lNwkdV6VOPWgzvJMRzJRmRwpBrl9X
	 AdvkvTySJ2ectMB4IGB+hbZPZQrUHQ5YVwfloexUFB0UPg4t+xUHdjh13T6GHv6Gem
	 9ugYxnONB/CsMS2V5hbpM0zZSZtxQaPvg4/8YV/cjsbI4NEjaEdH1hXY7AIpOqE9A3
	 kCorKRXSCd+GMA2huPvxtYuFVRibmo9rbji+P4ZXW4fOt/iNYmNm6KV5VpZCdOtd+o
	 QhbYtfuy7lZtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0419C83F08
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 00:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169301004869.28901.10067639761316242230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efbcd73f360d2ab7068ef9e330bc724aec5dc07c5e4a370cb2426f427d3ea8f3
Date: Sat, 26 Aug 2023 00:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693010048
