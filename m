Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D9233C0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85A72C433F1
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672954887;
	bh=IlLV+YyKtMz7enCkXA42+e+VValS5J4uJ7qiASZ+ySM=;
	h=To:Subject:From:Date:From;
	b=KUQduxOT6kPos5t7GeTwGrNzYsY50q3wv/BpHIKd/RXoL0WJmOMJaWRcxuVLeAvCM
	 tlXCtSLytuIfPQ5VPL7YCJDqercmWO0XbYTPV9xt/qTVIZjimgDyA66YWlgPNYETXx
	 Ix023pf9ALF0lgSYINkFF8HXSsZ2OhPlhjvsvKPX24k6S/mrLtLe64ekr/upUHB0nC
	 eJO2oF2azmGc/mhvMHQZAxs7m627dJ99BiJLj6/T2kNe0ob0x5aJkJ3hLnFsiL03JT
	 BJhR9H6DLN4lmcVSfAgc5rtRU0+Q3JObBZ1bb5vwVmWGRuN6jhTflw00YsXQuyw1DA
	 ITQ/rUquMMsUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D5F3C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167295488743.5141.16540194353907386871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f558165abc4789098194045b4379fabddb8a9e0df9ca6456953e669c0d80a4c4
Date: Thu, 05 Jan 2023 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672954887
