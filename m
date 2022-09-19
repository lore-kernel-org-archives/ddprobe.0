Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB4C4A1F
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A455C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663585253;
	bh=zoY0/c6A8bcoOuZcckQ9rZ9Q7V4EJW86IxJFyLJle3k=;
	h=To:Subject:From:Date:From;
	b=YQ4c5v7jgs+2IH8tTZ+FhZQwNbGv90AQY2u2biRorweveEkyus4Oa+SHycySKKF6z
	 PXzD4XKvn0d0HqI3oWRVEIcsUhoAoEAfaCVkFLuSu0NBcVOyLXbNkLRM+2n1Cu5IZ+
	 5rbPKCzmIRvKk6GkmRuCpi/zBeiMtUidNgdwj7nuTFxKVCtRAEiVgRydTSbDpuV0Ze
	 Qc9AfZj/NZbr8cILEhb6VWjDGCRoMNp5vjC3oKcVSf6KOAmB3kQiGGbaZivwlwrh4F
	 +8URsyWhvapNTdQyw6e4ae6mn90DPhc+PhPZY/Ua7zp+Olmq3nRYleGB3DZA6Yxile
	 7h5say14YSuSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E327C54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166358525337.20724.16816161259815082907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1726db6485cbbdd1dc9fc718db28407f70e249a8b750e090d19eccf185e2dbd0
Date: Mon, 19 Sep 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663585253
