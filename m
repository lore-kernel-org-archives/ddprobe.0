Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C49C63A7
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 10:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3ECEC433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 10:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678356665;
	bh=v4iEx77aZKmoAtMKTtfN+4xjc4kUhzSps8cHQJR7/og=;
	h=To:Subject:From:Date:From;
	b=ZyEdV+Jlnd4tf8CFqIrIioJOJRyw2Xly83MHr+qeFPQwWxSTbjXypeXHIS6hvYcmE
	 9POPmqv3vp51Y5F/jT67pFn2fyDtW+7Q7Qg71yQnQvLkVOh+CtXsMnKFJCASNH2w1S
	 +5DQz3X3xnu0aoSe3CP+ZrU89NCn7rwB+A9iNrmHnLhPahNfc/3ynJo6Jwm/tpDAHS
	 waJ15aeM2Riz+w3TshgwAKdMczQ0V/YTpv9oCsKmpng7Uj/BpUOK0fK764v9GoA/K1
	 tXog64m2CgEeiF72pa/175ytbOSl64pcxeK1dWaDIZEmTgos1Z6cB2A1gYc6xGimNt
	 3QRzBvCF+12uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA990C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 10:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167835666575.29035.7257684568999508382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c33a5901afa5984d891569d6aef687509e551d3bcf61f69920fee5ba33bb79e
Date: Thu, 09 Mar 2023 10:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678356665
