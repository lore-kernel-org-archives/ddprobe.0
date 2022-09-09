Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DBD4A2D
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BD94C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662739253;
	bh=q9yapk65lQ4UG58LrV+W7Vg8VNQh8bEc0Fg5+w06qIs=;
	h=To:Subject:From:Date:From;
	b=aNOAApTY3lLEadCwTiBM4wvn3lPtC13MoKioJZxZNe/u8MXWegf/Y6hSI001uwqtW
	 18+bZHpirp8JxAV6WOtwDUiHGxKL1Xtmv+9kUxykBFubjngy5uXYeo6cQf4mAbIOpw
	 w9kMTJaxxDgqOIYrTSJdg5MILrRppMbW18Vl55XgopOrya6VhChTGFQvgr9kNTXP7q
	 DiZVES2ckOszknlK+0qon39GV5vCAec2NdmpbUvCmQ39IZqlgCbc52DYpNCsPlpIT2
	 abtfivkdqhmlrDEZXvc13ql8wxrc+UibVbCZAYBhRQc0R+GidfSxtQlGfRGQGn/uVy
	 SqjogH+c7hY/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F05ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166273925333.25636.14537846630851402002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d817dbaa76143a3031dcf79cc83eca381acbdb90fa8030e2c31c6980ce3f1db6
Date: Fri, 09 Sep 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662739253
