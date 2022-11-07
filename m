Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5FA7F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68D1FC433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667815854;
	bh=c6jbNba5hQ/5ShlamE0BnokwnvikJPKAaNND3wW34Kk=;
	h=To:Subject:From:Date:From;
	b=cQ2Imw4qhxnYNAbwcDXAq08T7qF+0BA1Yp87itlWDWqXPY0zvJlDjxBPZd8QF6lIz
	 PERfLAR8Zt5d0cF4eUwHtbiEPR8doNTI1wGBiqdOrIgg7Mt9MAsiiSDxEoZKCOGKXy
	 zDVxVe9LZAm9qAIxIBtpEMzHhlTX7w2jdg8cw0ufMIg584R1FzB0FG0/cxHrA8oOOB
	 tll6F0Dyi1FOoLmy0JUQj92yoxSEXpB/cM7oF5jHumr0e6LqIb3VLbqrWLOEosx2WK
	 hoxRjsCLQbyea1V/NpmZx7rWHhQDuk/JGCVF5owtnr1YLbZPu+M70I4nNDni7Rqi5S
	 ++x9JVmTGDfXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52901C433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166781585433.27050.18061624815484292829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b5f2d934205e1205b657c428e5476be84d9975edb0717ce4695a7ea10d8027
Date: Mon, 07 Nov 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667815854
