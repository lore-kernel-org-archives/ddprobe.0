Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284722561
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 14:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0466C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 14:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674310325;
	bh=owu4bRxHXh3sgkLPL872pKcvkCj12rv+6viNVDRqsjc=;
	h=To:Subject:From:Date:From;
	b=csF0pLze9Pb9UNJO/ZMOeRLo9++gPWcdw9t3N0C1/w7fcFmY4fIVfNx65w+SeXSI1
	 J4QkTU33kHOK33+YKYGsgpEpVbRDsyiZxGlfenPULS8Y9WtryQr0f8U1STw7GAS41O
	 cPKfn2flr2hwNQ4pePEQZarOBK/Vg2539GBuPtwMfXqarVtK109sTyBDFDYU31L7vR
	 qJpTfB3SvJFQ6CcxSbXMnIhDSHvoiJGuXWCeYk4S2h7BB4rQn2Ui26wWZdh1vaMTWg
	 IOsUpqK0JPsy9x40noBWXvrZatNYGvsvAfkfJb8fdbguqCanKcSjol7e+1JBqO+elK
	 90ok3IyBv4qVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B434BC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 14:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167431032571.4163.17541668096996733140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a989d96c24b93930666e2f7044f713c6569e5f3dd1f1aa6c925366d085db12e0
Date: Sat, 21 Jan 2023 14:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674310325
