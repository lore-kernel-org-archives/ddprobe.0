Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD75C8C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 21:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7944C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 21:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686605105;
	bh=/otxhvnq93kKQBpfhADkqwFQoR2zb2Zk7Uf6YzZA9N4=;
	h=To:Subject:From:Date:From;
	b=PV21CymveKzgSqGdyHMyEzxr1olxD5nzt0yvNV1YBRFYG+Yui03uGvWpMCy5psuf2
	 32Cec6LMzJ+NFfJJ2WWgiMHGtvu6kMI/uZC1S9wlw8NGE8cl0ih0QDAb8keqPUlrWR
	 NAuIgrR6UJ2vkhokU+/+VyJbs2VsHZ9VFbFAJV2EWDnwlYGFBUkH9C4J77HO4UYbpy
	 Bx4ARZhQuwzWfWoJSKf+deEo9daYKlzWrx3eB3Ze1GSBMAE5gWXU/y/VZgVeK9ekyh
	 /9tIZOgMnV0qTDDHYgJdmsvBWzeORGKnit0wTf+Fb1p86ukS6FWE7EZ2NcgBxs5PZk
	 Urjhe4bR81ieQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4BB6C7EE2E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 21:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168660510579.9250.12367777975483735040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9791ad9c0f9010d896211206f50f5a9da1f5b0fa03a3f6e21b833908c6d78fef
Date: Mon, 12 Jun 2023 21:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686605105
