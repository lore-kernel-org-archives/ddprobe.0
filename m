Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321805683
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 13:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9705C4339B
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 13:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680529565;
	bh=hanRQK3gdIc+F3rTFyhwVn45w7nFvCkhWECJ/D2bBYg=;
	h=To:Subject:From:Date:From;
	b=dRanvJUHnGkj0gN97BTGxLgvPKTFKkt0id8IKhxY2HsgnqsP+nlW3VB02gLxkfkyz
	 jA7HXutPcO4ytE77w3Wa/QRG0ZB4MDhla4kkZP5aU2NvL2/FFJWvT0Jzvnwb+wnofH
	 8Y0QMOFUE08CwSbKHvqnyF43r6M3d4p109w2wyRzFWDd5c3xZKyATl4eaiWb42WTi6
	 b/8iw+zjwgTEWOh8iqRcJtmuUNxp+BE90flAwXZi8P5FEDRTrfRMTKYRVvI9f+mFdW
	 u4RiGAYeSYQdjboEv8AXQ6zjVBMkpOUNCSQQK3lF1yF4TTaTMxjIp7P5w5ttjNjUtg
	 4JKg3M+s6+7pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0275C761AF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 13:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168052956577.10866.4699042636188345291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba38934ea5cc9cb6cb40dc0bcd179df8d9667bb8dcaaca57a7b0fc7324f91e2
Date: Mon, 03 Apr 2023 13:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680529565
