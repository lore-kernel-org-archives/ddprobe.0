Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E4517C5
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF14C433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663905653;
	bh=0ZzDIcMkXzJ7GpO+ORGBeRUwDKIV25yKZM75Zsan5V8=;
	h=To:Subject:From:Date:From;
	b=rO5Sgje832iSL+plboerDHgDoSYTG1Yc6yC8kA3fk3Ylo1K44K/QknBHh0iNSV5E8
	 +0P2J4gO3xSxHJ3GKawykCmTxH/mH6yGEfg8FH//dByiw8zJgnnaoN00nbH1cV9Gbw
	 fJgf4oYXd8smET67F3SSeiIMNzoW3WESaL9TjSTALOnGYCII34aO8Oic4x2TTNriOO
	 2rEqiYP+2GphdaZdUhnk5Lm+5XoQsRC/TJGbHr5egpEuaekzNAZOSufiDXoiAlZZB+
	 kKqs+igHPNJqpQQHlOzRzKUqIMOBClo1F2P/LFAdvpfGzotrVumZrNoLgWB7N3AN+a
	 rLUa2g+uxXpiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60CB8C6FA8B
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166390565338.16801.3319553499032301330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b4c2d3de7df4c2f95a460117a81de7cbc15e571b9455eed6ccffcd4133e4bd
Date: Fri, 23 Sep 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663905653
