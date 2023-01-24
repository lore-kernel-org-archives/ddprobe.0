Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4047F8BEC
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 18:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E844FC4339E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 18:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674583985;
	bh=D9oOK5WTAIGOPSW8IlYiXYkicutuDl1iLQlzAyUXga8=;
	h=To:Subject:From:Date:From;
	b=SOVgcPHzRGf9G/JQuXTg17bSjuInTDaEHoIL6BxN7eZQ9jNrXpM01W7tDg/Gm1GFP
	 hVC8gjwRL7eBjwhMur1Wd4tfEq4KoyY7KfWXMFYAT3HfZj10NM5C1DfPKEsKR4L08G
	 4qIhIyxfwwcsCg187g9ivyFb7NKKT/5Ok92LP9QADflqmXebEB+Cpnl9s8cW6iXUED
	 l/FCz5GUvRO09Z8/hhMQQMyY1ygs2tLeAe13Hh9HVro1ptVsxSLY3GW3Ksd4uNs6Kb
	 9VbjdKRHWIshF/l4fCHCtJHX+bSfZQ17w2swWpCGDWTgXQ3brv5eJCtHA/f/hABYjT
	 mmVnN6pDJDtXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF94C25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 18:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167458398577.10319.8985587834951515243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff26b3cdee0a4783d6a73f6f921d510dd121830ff79b8b7c6e33d5f20e88c813
Date: Tue, 24 Jan 2023 18:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674583985
