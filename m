Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D537EA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 08:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFA92C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 08:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687941189;
	bh=QEdvB+Z/HqmzwsAO+/lsyOce4g/o2g6oyv6Mz66/1Yw=;
	h=To:Subject:From:Date:From;
	b=JQsq1R6b0Zpc3qOHwS8Shkq+7UlFiCJwcYUCCCuVcasf/KFQDbmEcC4nZk0Ptq74G
	 U5ZKwOofCQbRmAw2bFWIcMDJASrzDYaS/dWIBjcFB4EkyVmlfVgI7mQJ+CmT8CWyRQ
	 PfPJQXTdk+mORZYe0TzRhQfS4KWlLcisXA1Ep8RaL3foDzaxxzlY/h27M0VI8qOjog
	 O0iUVFBiUWqnecG3zGh2vlTXi50uoTkiCXIA1gw5AQxWxy5dCdzHcmMIKVjMm9L3QL
	 LK+LrqTNhJNpCR0If5S2BQh0+XPReX6ffG982Uby4v8RjRNw7LeNSx5K+fgIpAw+wJ
	 2RjHR+Il4Hvkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1763EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 08:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168794118884.9736.1748156681122001751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c714d197aab86bd67f65112a2924b4ca1317d66897f3b6a8c96ae1dfd7d6dded
Date: Wed, 28 Jun 2023 08:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687941188
