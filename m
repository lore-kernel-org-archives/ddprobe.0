Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C6920F2
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7854BC433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667213454;
	bh=SJYQUEf0f7J+0+FZakLLFvthRjtLovMliRL70gM/w9o=;
	h=To:Subject:From:Date:From;
	b=s6/HjkIbF7eBFVP5yhW9SmjOKMwR6ZeUG+5Isjyk51WmDK3tf2OdkgTJj20xirnU1
	 0tRI+dpTCS/DSkD1e/KWEpi/TSqEbm9DKYJeXTtjXuztWRB17NBQXrikhXHfYr5YcC
	 vWexJ1gxohEl+rdTP8r4PXa72iMxV5AHlx4e8quXuhkbxX9PPPkqI9+TMtsuQN4kkW
	 g1iHGp46k0/zXDUQxwBLhs5QiOnN8lK5Lauz5fI4Bq1fhKvRU/sWXw+DpS1a3OS78y
	 daJ4+bRMgflNviurEosgryFrfGqGCSyvCHvtycA9K/wnXMZOaQTo1MP5DI0nP1nUtG
	 keOf66I2V9HPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D6DFFA3740
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166721345437.7153.5436191446189669653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c740110ff3f21d69818a02faf1c984e31892109f5062a513a499a1536e70369a
Date: Mon, 31 Oct 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667213454
