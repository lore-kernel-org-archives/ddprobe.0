Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECC8625
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 731CEC433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666518653;
	bh=8+tWWW6oiJKVOgeolVyT+Aib8JPHiqHNVfFzXLaz984=;
	h=To:Subject:From:Date:From;
	b=II0KaKGKJqj+Ojxz3MOy7KBNalKheadfeL8M/grXC3/nmU94xO3kVl1Z6zN+uC+dj
	 CTBF8ZUYM7FwaYrpx6lUbDZmUIr2HWDwQKEtQO8NWm1K/yCG3gTtupKhFmo//RHIjW
	 4qWazcT83Plpm0c95bTLpxZEpfbKDzSy3TqlCECDuiXGTpzXKMRxQ13PhkGcDMHlKh
	 pnGWFkramhxzZKtdus0Y5rQ4O2zs1zjPaR2gLnTndlA7GDJ9sFh5emOvLi8e5wcwl4
	 7Cd8zYY2sv/uusGLYJu4ZgTXpx68U+CzRYs+kvkDtmDAAJCDXqyXVzIjM3uhyViJ5y
	 bTBmj+9mIR4Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58C79ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166651865335.13473.5150413383837839681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d45670e11ee5b24dee2b91ad9e974d682a1ae0cecc8de759a812dc57d2face4
Date: Sun, 23 Oct 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666518653
