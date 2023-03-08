Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1EA862B
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 03:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 34981C433EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 03:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678244466;
	bh=oJtGXYnFxYdPPtf/jjlZa9MWSY45JmLDnC7ewQxKc58=;
	h=To:Subject:From:Date:From;
	b=OY89vuuY/JlaWpgjxgvwdfVMzBDUzFGcz7Q6qyhqjfrTb+9rNojcDaHQm4HZ8hFzH
	 VsHLCw7a/FaYsOgWmOaNvd6xL56pYk/ZQW7Oyzs4mme4OU0h5x/N/LyklktuABdxk0
	 NK7Tacm4/dQkUgTrxak5SlZ2AvUfzTa9Ef+CAoGEC/O14sH9Wp4VXdFm2LRsO57pty
	 EaXRTS510P9sjqdb0gdOWfW4diJRj+/8CVDF15ZULSuRD0dB0ziHSQHGvg/eaC0uhn
	 AbGYIBf8ZxXMHsC022Iw1v6zqGPKVjR7wcpj6g6tdG2M49mVBeiwtpnzSWcGhU0Vm7
	 vAgtFTvcpU9kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3442C678D5
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 03:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167824446598.27843.7475711101305572366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff3fb2d948984565ab8abb9663629877e8e8867818953372f3fd2657478ec6a0
Date: Wed, 08 Mar 2023 03:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678244465
