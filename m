Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3058F28F0
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 12:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC11AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 12:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681907645;
	bh=qlMFOz6nxhrI+P7YkPOQ3S8wn91oWxx8btyJst7InvQ=;
	h=To:Subject:From:Date:From;
	b=K9zSa/eGSICUwgslqCw6QlRLEq7sbmM0jEl9sE3KW2w5ShF1o69kUsPwmeyg40J2H
	 hoz1w+TOyZSsS7mgJQkCyjpO7I19fG97mkGpSjIcL7rEpy4EmWOOwN0ONq83OuJ/f/
	 l502M0gAmCrkYpkv7fjBv09zxgLzKZ/mqv+RmbqboajP+Di4p0jrvsKSriqehgTUPO
	 RmA9+EZRwmV4vZiMTiuI3+g9FdbTvDP9VEVw7ETJN6CjdbtDx/PGj6vIfRKqyzQ08e
	 AkU37eUJGIMalp4q9Yj/b9lAOdPL5dWcz48G4VO4FzQ4Vzb1m15nqmfPEdVT0NKR0z
	 97WJaTZxNQuvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC1F9C77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 12:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168190764576.13275.4793015676395653528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4369a466dc7a7a644c87e32b5e600f3d95e9fbe4e80e68f7c4ae3add0a5c47e0
Date: Wed, 19 Apr 2023 12:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681907645
