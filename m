Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3602F41
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 14:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD90FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 14:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676124845;
	bh=HvEqMCFPHknFzin9LMcY4YlVMDzoFnF5WzOJLWE//3U=;
	h=To:Subject:From:Date:From;
	b=ny+5Vqp4s9zxI9+OsEbERpFdK8UK+jYZzfKtpKWg/jx4wxYzqPHvESb7fAH296NBL
	 CqSk6ulLVoeFITIrWa1cAUwJMGMXO+ixYB4dkOv070/ekIAnVx8i7ix4cFFrlUdauV
	 eot+rV8JUbXtb2sI+SQruIZK7sdNnpscOxIBKAtJgmjnLQKdjoOGlaIIkAqPE+wrH3
	 vIxB5zlZ1us86483C4LPlWjb/52OKLYhoUwhQucGU5H2/ahFGtgzj4xowSYEC6mexy
	 9gleWJn3/bKEgkI/rEprc9873GflZJuxWYX2+p74sVyKpGo035axEDF+zB8aSPyXQd
	 87NLhPTPddAEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C300BC636CC
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 14:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167612484578.1338.5941996525143954533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306d44bad345dc927302dcfc281edde4743ec22342354c605509ede8ae47658f
Date: Sat, 11 Feb 2023 14:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676124845
