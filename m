Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0A723D4E
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 19:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00272C433EF
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 19:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683921306;
	bh=tVoAML6fMIDrV01rn7bTTvpyak5VVdfsgU3PKAYZLXM=;
	h=To:Subject:From:Date:From;
	b=KMFbBpe7bRy7Yuck6oC5WPLVShF25xYnjfbBjSYz5Y/1NiJECT+NhHbFdZSp3j8T6
	 e7aa0lir/NWnKU26jsacuIWN8Jhelds2XSgzvUr/BQz2PeyMfUFiLsjKNs7maMM3lS
	 RNJzoG2sbQXcf+2MVFv/KCU9Oc2//CuFgiFacC6KzkWHhRdAoWnE69sfa2vGXYkf42
	 b54k7GitYZgwyi9SoHkpxFEQ7jCvulzI9DqZI1jeYD8mWlNeBTZLNc480OTTH4gg/b
	 KpEhO0T11ey5AG6hyxTLNS/DGKh1Q5bMZK5dAp6HnTq5WigSjFgoNBRRrzFLDvzLeJ
	 XWKNr1nZAdp7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F75C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 19:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168392130580.317.1919727262135152960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f18eb9942c60e30dfc432ed33b109535a3190a2d264ccd017bf5ac44a59ab62
Date: Fri, 12 May 2023 19:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683921305
