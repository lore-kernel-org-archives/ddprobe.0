Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378BC2566
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 11:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8293C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 11:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679485145;
	bh=pzlUYtOdsfD7qcntFdT3ALwDmB8Kik3WYGKpPX7PSYQ=;
	h=To:Subject:From:Date:From;
	b=ZOTwaUqAEJWLR1aRT8qhoawmgdl9wXAtayAaBc3pG/tOU2qHWNF++duJQDXVExc8k
	 9ReOnCsrxDKlrngg+5eHf2Q0R6OXaxAxsUbUp19TzIcs8yRvzxfrLCgAV2ilG39jRg
	 s0n0uB+0HEFl3Pm2iUesCIb8Bwy1Yk/2jWqt6MRbhIZ2gMQPiZ44c1wS0CzO42Wz+b
	 MJTMjFSXEdyCw7rlbHEnrMHOuwo3iucfuyO6F1uKjQcOP15Y+mOTcZOrXbQ0E5PljH
	 fXbuVDkPJvyI7BdkjMkC2VmjyrUUvaDd5j8QRTx3KkqJqw1+2rHvCLXleEkcw8HZym
	 PcvH9lwbmR4vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3DCC6FD1C
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 11:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167948514575.31082.550075191807735221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7970d09b4c5bf5b54c42b3872bce18ac7c5d0bdd30c1eccf3a6506222a83274f
Date: Wed, 22 Mar 2023 11:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679485145
