Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1224A11
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 669F4C433D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664386253;
	bh=xPKBbRj/Jn4LzNjjzNdrNOZ5CYOPmxvq5ZIOLjhAwE0=;
	h=To:Subject:From:Date:From;
	b=kJFvnEB8RlTZ9kKgNWTPbgtXAh9cbPpEy9lxHYsefk5aqq39Ioep305jiJEqI2LA2
	 W42n1Mok5qaEhhU7zw203iq/WFWSTfyCyuc4QkyCBxhj2vbnpOuOqd6T5AAG0YvELm
	 8oN+rl6tyTowdV0EEkuxjZz/dJ8rBjAYhBMOZpLG1dNMYf0eoemdQ/IFt68dPfkPw6
	 AojFGM1kheAhrHEcGnayRFqyf/sKMpW1c0zkrPqd1J4tfZbjd0Z7/s9Hcep+ELkALe
	 sGRHOSOD6o5mlDJaTMAsZ3jG0a1+/9CDBsenqOZZs9nVzwiPKvImXJhilnRxnmRQL2
	 KcKqj/MXJedlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5031CC04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166438625332.31086.11002095927273893984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 843ca50a8c83cd84944c014a6986ecb7411b32a0ee9069e653e8a66658a49585
Date: Wed, 28 Sep 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664386253
