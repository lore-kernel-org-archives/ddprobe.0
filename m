Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6776728E7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 14:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC6EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 14:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693320848;
	bh=iZ8pf8zgSugk5jUFOQEBsrET1k3ZBYhZXZftun3YlJY=;
	h=To:Subject:From:Date:From;
	b=kGYdYeTBAnlMAZ2Lw/vvIue/IoJDOwtiNEgCR4gZbQpAIHfWm3fa/MnNlbIL+/BwK
	 3CriwVqms/+xlP2ZplhEq43DWSnXUIba8R3qxPyxVZhxDrSADv6okghWpB0OMCjrgU
	 FLwkZHWFP7yxhF6mxmSGBXDOgs7sdXwzDFyG1/wE+poHwYoClfPTA3bt5mL/UQUouO
	 LDEcBZB8yq58L7bwWnzNpVQXMGIwosQvfQ7GBeyfSA9sJYjLJVqbYmdlRvjdfXy79G
	 0lA8aVezQo6YvOE/kkDCYxnoWZVub37LFWUnf5W9u/7VT2FQqCo3Kfqxs0TO+uI6Xx
	 8uNGYtnU85gtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2255C6FA8F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 14:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169332084871.1616.5840624971797574808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 008a88de30aef33f061108dac2c7d6ea334ead6368258cafc8d0afa5e24c7aef
Date: Tue, 29 Aug 2023 14:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693320848
