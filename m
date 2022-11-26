Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF09217CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D2FC433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 06:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669445454;
	bh=i9xGEJyAODkuFWLHKHtDxqhDOOQBfZq+15QkqCPqZ+A=;
	h=To:Subject:From:Date:From;
	b=F/oLe5vdu1LBtUpiJ61b14Hs9Xcp9Xo9e4BC2bothxs922nSlT2HvUBY86nwsAQZU
	 iDylp20dA2ZMQXwdXDWOQJ1vTsoJlMjFTtNzqbO5XaII8XYwSgwBNyG2OverksFYHQ
	 6Ft2t2w7bSQ69hddqKouzZUHNbzISyzIXyoBoohZLs/UBRp+9wH+ftKUUsFp847GwR
	 MEQxdi1doq/fXNM/h7QjqV+IoHfVpCFsmlY3q6x7MPYWEQ+VKiH8JXKL6NrgMotSA4
	 r6nTEI0QbG9oh9OVs73Na9BPcKwd6VmVcE1O19YK4k3ppiGCxywISpsUazV4oADwNj
	 P37jDMBF1qY+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59BCDC4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 06:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166944545433.21976.2334409980221774868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd4e7b32ee72417db2e37f30e076b7add9599028c522f16487f5c1cb47cdbed
Date: Sat, 26 Nov 2022 06:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669445454
