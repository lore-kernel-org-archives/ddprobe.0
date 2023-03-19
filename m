Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4115D111A
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 10:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF07EC433A7
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 10:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679223305;
	bh=J6Y+1wosQ1mbQbngdNrd0EZKxfhihbQ0P5cJjG+fYyE=;
	h=To:Subject:From:Date:From;
	b=F9876QjkJyZjko6Gnn7PnqPGTWv3jg7/Mf7eCyfA4cE8Unw+pxBJQlC0cLyBoYr1f
	 mFGe7Q9A8opqE0xcm/4WAf1UFKoOYxolDRbUsmxB+7UdhiJA2Nr+IRhTdv5c/HbguY
	 qQbaPh4Kom9Nklouwe+hy80GjsD+kAviyG9lvbHA386NBo0IDum6icaMjA8jLnQk4b
	 aGdUNtfrp+TkESqDrXcrTsWr2ti8cTVpBfEvaxACcmvzAUBdGJCR0sL5H3JlqkoiC5
	 lqZnwmNshK0QighkJFRZwHyP068mC3WkoPOdl5MdBkNX175JH4OGvwEnpCzo8U9erv
	 4iEBvZy6R6KHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3E9C7618A
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 10:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167922330575.15911.9299522609236653509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70870d3a687345e7fbc71d6fc163c4529e05234a140c39ec711665c538a39025
Date: Sun, 19 Mar 2023 10:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679223305
