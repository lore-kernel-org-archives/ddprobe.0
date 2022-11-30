Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94887E9
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E11DC433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669784454;
	bh=yAiPxe4vzuEAlesS0m9eF27wrhA18XUs1v+MLgj/Mow=;
	h=To:Subject:From:Date:From;
	b=D6An/KFWQF7R3bIZOsHQQGdmvKL9QYvj5eTbcXcFd2M7Y56brAn98K9weJV5sy+dT
	 UTmo0kw0JDPtFWtBgUBXNkKVk4UVsRJhcIc52tihllOBtD788qjX5htNeA/Rz9fKcj
	 zY/x8GqwPldjNgJ7JHGzjCvc/pJ98RYAToKWY3biIyLFQprwuC02izFw1d6Mkphk/b
	 gbN372wGi4v5a+Do8XYex+HVdt4fCi7yJ1KxQYP2LnLzICMeVfMGwxAVRWpZxyLSEc
	 tEbMT5tUixkyXDCM+CDjDfRNcWZvZ23zf2zTgoz+VRWSACXQBaPJ9jwp57daByYdOe
	 f8hxVx/NaDsYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D5CAC4332F
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166978445436.2446.2725738897018576453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe720a1a7d651017be7f285372254aae5fa0adc20b1bb9e7b9299d3bd4c7ac4c
Date: Wed, 30 Nov 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669784454
