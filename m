Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B426D24
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 14:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2DA1C433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 14:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680185945;
	bh=TaEoJ3lBjIb3hZzbkKuj+U4p9D36BakUaCTL5VLT+r4=;
	h=To:Subject:From:Date:From;
	b=mJw8B1ZpuIttQPgpQef1MNmocn/bb+f5QAl2s/8vSnojLXvMM2azA2u7oDXKIxWmp
	 29Sn+LCjS5XUiMeawx7N7YLtVYpjcx5YJsEwWBS782jNcaTKpF/JZohqtFDmhQmuwZ
	 hh4mw7mFvWaQYw2mx8NWj9Cyye2L+SMSEC58vTlSh7RyeGYoVo5wkFqnNKJKRBCJgA
	 wB0M/1spu0SuNHskmFjCxPoqcjMyDHt1buxQV8ttvX/YhKpZRmc6EisEqdxl+/AUQM
	 tmSi+YXyTa8YmE4g7gFNfoCvUloh8rhLOAFecgnkNQzxJkynPCpT+mOvmUyMB8tF/L
	 mWlEckfz/YKzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5873C6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 14:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168018594579.21379.6644769076754698192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9d1a1def8a64844491b6faf76301eb90fbb6e0221f3c7f7ee7550a974deb9f
Date: Thu, 30 Mar 2023 14:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680185945
