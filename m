Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60485395
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7259BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668438054;
	bh=Ptns9Dy4UHW5Srm5Ff7Ob6otNix9gneo+cDR34uUmEg=;
	h=To:Subject:From:Date:From;
	b=dpv/GO3tVBRJdfjXG42vh4PD0lDAflvnPGMbFtZYXJkVfiSbfMxuXHr8P6ZzcQajH
	 RTbnm2OgyDbsMCywriUgXDNs5Lo/pcmSz5CkXmBS+KUjWP/ujNBbT9KDE0sbxBtpw9
	 k0ZLLv75HjeYYcSrhK8Zb3HB4BKV+iCp531yJbL0dlnrKHr/xwI1PqmrZKVtHHTUPS
	 yMztaty/gsFhRUZXB166rsI6AnGfhqldSU0l4IoqcIbXc6RmCtJ81GSkXSrInoPjV4
	 zycd4QIf7Y2Y7FKvdOGOlj+y+SLzSxUdbca+JmNI2ZV6eLhyR9wzm31vMQM1xYTXz/
	 zwaV0D4npyhXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 591F9C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166843805435.3910.5704489765914503210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3664d01484aef7a6f7c42e5c6ab15e175e4e960071c7ed72be72be31e785f2a6
Date: Mon, 14 Nov 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668438054
