Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFFFC7FD
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B9DCC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672894287;
	bh=j0TDsYaij2YW/eNPUOphQQbVu7QY1vc0kJBFrUSJMz4=;
	h=To:Subject:From:Date:From;
	b=DO4oJl70zN4RMZNWFCHozDui2X/PC5S9mjgWfJCjB7sW5kAsHZozhF/LBv67svGK7
	 rY8KvW6zp5Dw0atFEgvPOGvRSbTCSkjhsrWTk4ESz9fn+pSvh9xPzhsYw8/s7pJmMU
	 q4/SeYhc8TbPtgk4Rr+5UNgQafHOFKmL7qlPyc/crkDPFzk0DsMMsaezbEG1kqTxhG
	 KIpIy187Rl67GXeLuH48QDn72WZQX9nDjLG+Itos/+e2kwRXqEKpXnoGjzn+LdN7nH
	 jLR4bDrbReiIXSLuBtetrPdWv0T7zsBIUrSfdamwg89wkuLTBvrSqo6XxQHszDfeZa
	 RJs4TSpkYTDGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E92C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167289428739.6057.6271781846033633019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75794f677f9b3a48cc73daae3e2525ca56d39db67779499b006f8b8ade4ca92d
Date: Thu, 05 Jan 2023 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672894287
