Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E6D15B6
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C6DCC433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674023487;
	bh=73uwWAAoUsl6ZtuJDURAfzAheooKpFA9u/LXeq9oTwQ=;
	h=To:Subject:From:Date:From;
	b=HX2JrZav4WOdR7OP1g5MbTEYBWR6BqN4DPcTcVbjMN12O1BP/x29wEATxJTHqiU1M
	 1ZfMIlPSERRdn6nqEx8csIfrsaQhW3ih2qZsqOORLHmzVDGfDnVdYAqCNf2gQ75dbL
	 tO2lu0qOZUTa5Wy83O2076bJ33fVJKdgJKKGDro0TL8YDHyyBoKjqRJ95vJPJeO8nJ
	 4Xz1zKTb6c8ZDeQIo4ZpCHrsAh4Gabd9K4YIwENwuHdqqNvagZ73//PLwPw70BvolH
	 eSETT2LbJ4cc8P9SrzEIKJkSj53RcKkxFHkWdHNQWaXUaXIfdim+GrynCfxc4W47rB
	 OVD8izi4PUojA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62804C38159
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167402348739.29628.17323399552390265808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aabdc60dfb2db4df4071bb29e1b5e71801e43e6b6e8bcc6213520c94d52a54b1
Date: Wed, 18 Jan 2023 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674023487
