Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6638D200AC
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 18:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AFBC433D9
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 18:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690914128;
	bh=s2m+EecBrkUl7t/wa4Ga0b7cLvOZb/OTWXQQ0O4gk4E=;
	h=To:Subject:From:Date:From;
	b=jUjFwyfZ1jzKCF7h43PIVOxN6k/6KUFs2WkDq0H3GjjOnkBlGpObQojcW15iFpdd4
	 ybYBNLeMpauYlPUsicZqW/guPnRnYmPm5V+1HGDSpLLDZGU4IZ4H3C8IHpgUgtZLh7
	 NlE90zBLBEZ3oNnxx3t86uP/K3fIGEgauYSwqPOIIgSwU00MshmElq8fmQi+SmbAUN
	 sN9In7vlxf90JQ1fvuxWb6nNHFgR9T+mX+dLvSLvZ6UEDCu8xc3LuE5ilzJyBfWPqp
	 77snwsl/6TiFc8TSywX6w9C0O9e/nxQAdchFdyBFlsWIJF5Z/K78ldM7AKfKbhpVGB
	 OaftGiVtfjqDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD24BC001DF
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 18:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169091412870.3952.17906783494065926470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d63a5f6cdc899065fd35e5f0c47d78e6da18f50c22d0d42d0adb74e24726d61a
Date: Tue, 01 Aug 2023 18:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690914128
