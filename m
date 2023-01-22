Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327B8320F
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 23:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC51C433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 23:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674430925;
	bh=LVhh4p9Vq/tWGyw+MvF0vAd5TOVHupXs8r8WybY1Y6E=;
	h=To:Subject:From:Date:From;
	b=ZJ2bUSou8oCjbsoUDACeMr8Z0KT9/hNoXC6rfbYLEqRvT44pNVgk/W/7qfemwdB/v
	 +wWtvEfaQnnHN//a64XN4+7wD0DmPq6ldbXSk1bDsmK02dTa4ChKEumxxcOprz8ijt
	 r9TU3ifakzR5qXpLi+qMmIGUwe0Let6Yu9Ah6d2IlgxS54sEYb+0FJGS8QiTswjezq
	 ZK1v2NzeH6twc92EI5w8oUbvWuy1dOHq6BQV4iORzgy1aR4R0HcnScQHN5+oJLQ6pk
	 QtJ/oVqqo0SN0UnJt4IVuTtJR2JI+B3QxjD+sotZ/E28pXukSwZxQ5e6cILWWY+1t7
	 58nX9MnRxS3+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E83C27C76
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 23:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167443092572.8976.3038346471068634492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d929d679a03306100af1e78637999aa28cf5c224f660926e00477edaa81c26df
Date: Sun, 22 Jan 2023 23:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674430925
