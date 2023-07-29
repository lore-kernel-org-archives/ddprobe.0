Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81309F4FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 18:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92AFC433C8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 18:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690654328;
	bh=wjtg0UtNH/gTPTBW72RBv/rbV+hlL8TZavyFlLpxczA=;
	h=To:Subject:From:Date:From;
	b=l39cWz6dqV/gZVxk4mNNCly/xY1ESzcjkDiIXwLnwufTYuPkWM9Z52xtg+HMSi1du
	 ybN/3y7URt7rxZQjAlgyofBBQ0SXYk+DjC5BkH7DeFmwq3BNfeix8KHQ8WcatWHFXp
	 nXC+7hAM7q/tXzQNOTHmn+khWafEZr7slq/uvIneyGE+CCD1rOBiihuXzG2M/lqRQh
	 CsAM5D1xxBjrC6zE47eULa1mwEGL3luWwsBNhJXHGt9oz6Mv1iI8ufO8+1d6V2KdJY
	 PblWUDZqPmsw0SUMskP5kjdTnMaUqgh3StVz9pCjpqQAgAs0WmK9hXQk6EPje+xDAp
	 YlMz5xKeV+GSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B57E0C0015E
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 18:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169065432869.10014.17110273800511929885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e2e0e0d48fc52aab19df4e486065ae915813b83dbb8cee1b38f38f20a9e8e7
Date: Sat, 29 Jul 2023 18:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690654328
