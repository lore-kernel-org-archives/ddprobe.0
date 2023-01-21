Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BCF846E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 23:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEC9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 23:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674345125;
	bh=qMdc6bzcF+p7fEQEnc1D9eqDJ67c0l4JAcYHwjlbMzI=;
	h=To:Subject:From:Date:From;
	b=DdcU5XtbgQv73yzJvAzLE+JiZOiDiJQY74fEMdB6Vzk74jUVlA3BTw+QZ5GjY1AXd
	 9EzIwicsqlt6JmTiKIqMBKO9qhFBth+nJGhLW7L08s25/aambOWTKzDtiZTQDiXWXa
	 jBvh1F44z0iimRxwo0vEIazGFJttEb4GOmetY1qYsi/mP8oABJknpYrTcQuzKKu6OQ
	 118bFf7B6UJ7k7PhJnneTfa458zyNQkY+4eRrTJ+4OrHQkElNCidym4XLPSOBeLFnM
	 tVbrbg0Mbc+S4URU2ZDSef9TGk8mSJGE+bCyPKC47kQpmbATDv7TYUIHg3DTACJ72E
	 jRl9a7HFxZ0+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B98E9C27C76
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 23:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167434512573.3190.859038227529194456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e65dee31d494fd90b9c2db035f921673161d7dd0c98b6e6f1345b60d6d14852a
Date: Sat, 21 Jan 2023 23:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674345125
