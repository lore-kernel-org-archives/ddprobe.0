Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E068486
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 14:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB45C433D2
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 14:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685370125;
	bh=nOqgxeoIpS4kYkU3QekXblUdcJlKkq9OQjNvrZd5duA=;
	h=To:Subject:From:Date:From;
	b=JwhEaGOla9yrmfsKUzf3AoZFPjxEWbKs3xS4QHx9mEHBAEY7u1MozxQOPF4E11uXe
	 h/xnPq2RbaD7RDu4oDykFYdPL0CYseutHNhQL6PdIgMcacGHLkB4Dw+g/1HG63F1a9
	 mfHpHB9k2iH5OCetSH3RQxMHsP5bU6Tzz/7pTSqiww6iUHK0h9vY8e3fgNqipLQwwi
	 6zMkMQb6IyiIPVocBswLW3104iEWpnzuCBAAS7XyoLBtr8TIzHUh/xJwuFlPyrnIB4
	 jx50Io0fOwpUWU2b1Ww1CXftjCFQ+besB8JJTMuJMoFW2tmHAYRDwnD+3d2Qcf4Gqm
	 8nD9L8ESeKl4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15C4C7EE23
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 14:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168537012574.26756.13972280349834104639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df4fd47785613a6b94a4c73ad7fe0e8e7e9135543fb1449517d2f02f37164354
Date: Mon, 29 May 2023 14:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685370125
