Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B680CED0
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75786C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669134654;
	bh=t+DKrLciFBK5IwPNPcY9Vrwg/29bcUHf2RPS+9fYKvU=;
	h=To:Subject:From:Date:From;
	b=e9xDJKSDHWBF3bFAYyP9Uhug9Cav76XnXCau2zF+dUGRN80/NV9df0+KQVsK++Z50
	 J+KO2BcFg1EGdEGCsZr3EDWGxXsswxHaWkYZUsjL2Di1od+pKf2cz3GjHXYV/Q+sR9
	 K4Ip/nYxgVLcl+6DU+t/OjZLX4Esi8suPAt0gQjgQedLgiUfsXBJRO+a00/Ekkd94F
	 xoOUNSZlZgRtphj2ZJdxNsszMNGDuly/UF4TbBAKpIcZjqpMUY8brHDkpLxqonNGEB
	 U78OPANbHtZqJfXAmPeAHVtja7BDxzrIgLTYVQd6fBDsOBAPc3AcxbQMHEkylkT5EN
	 D5ULOXr28Dq7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D54DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166913465437.3228.3939866908247087883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08929330e7466371495fe09104fb4190cb0ce8bdea436fbae3c1ce2ebc3477a9
Date: Tue, 22 Nov 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669134654
