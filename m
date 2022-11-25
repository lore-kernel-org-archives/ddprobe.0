Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB03E23A6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E8FFC433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669363854;
	bh=OFRjrDCh482N7SVK0wbUO+gcmcBmCVNdzKVmtHZnR5g=;
	h=To:Subject:From:Date:From;
	b=XxlqX87I26ek3ZtFn7hzHgCTb02nLojwgNNAGUCBHJLANGXHhd7g4cJqt1fFsVggp
	 5nrx9Hsqhrfg0J6x2G7hpwFtlmnawfZDsl00MeTLBBXiYDd2Mf4cOVxrSHlKF+dFoR
	 3yLLjtJSPv3NmjoiZIW56HEo7WLJ4sOZghLVeySz8QF5R8VxOzNlajd8ZvfXYr0UwS
	 z4yf5rpFAeYXVWm1uKf6WmrSEPTvQ9ksCySUwASb1oF0hUSZlxW5xx7SVNgyENeser
	 1uZjfuNQkNP4ZdQ4MS89bXdPMxevtKXVRM4fKYQ1y5qEB/PDNDARa7sgrgfIn3YFvh
	 9KjbFxBf4d1BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58858C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166936385435.19649.681020670283922086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22460d2e1df3c8badad4ca41c01282c7845bf6317bff227354bda2f5d0abb9dd
Date: Fri, 25 Nov 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669363854
