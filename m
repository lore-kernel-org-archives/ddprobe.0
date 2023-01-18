Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C48B32564
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C5CCC433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674028287;
	bh=hRLAAhKa7ojuuIqnX1YHE36kW13iMwih3NnV75/uofM=;
	h=To:Subject:From:Date:From;
	b=HTERdkAJncak5dMXGA6+weQWRSiHyc8ZO3zM1T5lrR0p8XqUG5zdMs+UlWm3TZf4o
	 KH70tmYL/OCCPttIyOhDPqW8uH3bnMbwZTqautHBfZ47XjU9+0HVWAua8bTyS+JgZw
	 gF9vwZ4rnzHYySYbJbhqPls6N7mZPDY3/hkPeQ62f5od1Ign81e+rQh9X1ZThB5G1Q
	 pDz6QktGXFCVph9l8u8bdYJnz84CXcEFWGt9r5lA+gRl4g5LjgFGxc6AhP0iSs5suy
	 JJPCGQTJ2A+TR5TD0aJbdKDyMVN7GmUam7zokol49vC6BL+2gkfDqbOBVzwgnwA550
	 tPgktiVmXOA2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 609F0C32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167402828738.26449.16770409453962445295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f0f526c6212186556f5aa7910b049f65e4ca30f803932a79c91aefe783bbb5
Date: Wed, 18 Jan 2023 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674028287
