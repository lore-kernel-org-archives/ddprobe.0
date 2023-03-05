Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295B628EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 13:57:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD05C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 13:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678024625;
	bh=FwAOCTqS0oimRu0+q9r3pdVHzcSPg4NvYgkAOyPTko8=;
	h=To:Subject:From:Date:From;
	b=bB3jRoNRaZYuCDW7GCzk0TAZR0APQoCyQwUzEQqEQbsk7nitCEDsEab3oRIokziw2
	 DuIga4uK90/5aQNZ21Oym6SBXtuZslo7SFNdmZIOsyIvzFqQdcx15+2JskNLTlI+Bw
	 /9hmPhNWGXw55ZxF+nKxvdM1CbdTqGMwBTzN/VqlhT591XDNiWsluuBr5KL1CG+hGW
	 8BtfARXQR/AUaKJco+ZM/jLl7pB6xmXHFvswkZ/3hpo04aE9xoSv7vTk/9kLuTVF6E
	 Umh6VU9oisXIGEyG16I8+wogsdkgUZC7tTZL+6r4EVdk5MOgYuHjtkXrGlVcwrLRbl
	 LhXsh62W0vvBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2145C61DA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 13:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167802462572.17821.7440895529756045576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2b8e845129c44ce94a93f07613b95a4330310b21d44957bf008f06368730ca
Date: Sun, 05 Mar 2023 13:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678024625
