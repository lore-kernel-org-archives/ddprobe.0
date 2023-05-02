Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300EA64C
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 14:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEA3C433D2
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 14:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683038165;
	bh=S/9LWdWuq3oR/rq2sy9OwQ6FU4aOgmUSkxOtHpLc9fs=;
	h=To:Subject:From:Date:From;
	b=TU63cBsCd7nOyB9b87eGaxX0Xhm6xWAg25hURJccFlnAzUYYNBn8sCBUxcHNMmjdx
	 017cb9Giqs1U+wRsbliexfS1N7GPsSn8nWkHPmDKR12zmq/uKGfnLOLBMKCER50KHI
	 +qfTGDWAOiJhokbRrk6afxfV9Vqb5KhXhvwCziuoQ8+h05PvR6yTBrSYDtykBzd511
	 +gFrKe0AaGJY12yoXt6dNW5wqzV8YACuSEGZt62PQpeMcQxk9sFmjQ30Q9BC2miUM2
	 UFIFslTRFTqb8oAI5gIDiD4uvH7Tmqbwu3ZFwi7EiAoz9uN4qy687lJ0g2JFZlqz7E
	 rJQy2brgIbw/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD859C77B7E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 14:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168303816576.32237.10701579468706918421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0807917676e091f1b988a8b6815aa5f10a21e44cbe42362862809441f42d46b
Date: Tue, 02 May 2023 14:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683038165
