Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4965B107A8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 17:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5216C433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 17:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692983648;
	bh=2tgEQ26ZdObR87FoK8peyq7Y3J3TaHTeqi8llcxWuS8=;
	h=To:Subject:From:Date:From;
	b=HryfgLhPsAGH5HCbWULjtP0qYNzJp9LjdMbeOLumvo7wmozgSL7zNIBi6uTRNodKr
	 zRe1jymi/P7ztX14lLnWywMMpm3RnYn1PWywtU4PnzZFZvGzndjGNti55ugyCQN7Sg
	 Aa5KFDdbc/cIv09Wlx5GIZ1YHpuKUZE/f6wjBTw108yOI8VydqnuOic/YFep3uG5gK
	 yPGTqeJmKG336XOUtDfmqtuiX8TYMqW/krQPOeLVZ3QVWZotgFJjibDcU6j5lb2s5E
	 2yu2FANA+J/gcsPUMO0/Ji4KyP3edzci27ziJVa1eWphAQIbpwCE9RVnafx1svUTau
	 Mx8HKJquCy3eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A76ADC3DA66
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 17:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169298364867.24842.8381741495661225385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b73df839686f6ecbc3cd0ceb7b7d307b241e27af0ff74abfc4a738b9dc7ef52
Date: Fri, 25 Aug 2023 17:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692983648
