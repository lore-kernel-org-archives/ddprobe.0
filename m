Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6228333EA
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 18:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 023EBC433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 18:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682274066;
	bh=ftEI0PpNwEf/tDuqRqTRQxgc2ZbFk08cXc7i73CL0n8=;
	h=To:Subject:From:Date:From;
	b=ZqG2kK65MEDn4em9mjQsegk1Pa+xnvqHSJsTrLAbNoPCx/Jb7yXXbrjXen+64VbUh
	 CMkdggiEwSG27BAOfmT9+CiWEJKUxGT3zU3UlEdUScD6zahaWDjlPBPXvPpfUQfcx0
	 83k7recHMCjQ9cgcEUdImsrTF/WiWfg4MrJ/+O4wDi3FHJLlXyQ44dkDvd3IeXptkw
	 wWQKns/QAz84sJ/HBZ0HQfHud/JBv1WoadymF6xVf7Xmx4LS0YvSy8kTLS4K7ppJ4f
	 347pRniqY4FBSOdKXMsHwYeBq8Y1Xey8MLR6lzqUckmNypkK7x9odryB8WQWMklb7M
	 eqGeCjaZ/ANGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C25D1C6FD18
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 18:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168227406575.18333.379938633091712350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8cc99fe51d50ee23d10bd93ceb9840a6ce61cb01ef85685b0de5316526e473
Date: Sun, 23 Apr 2023 18:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682274065
