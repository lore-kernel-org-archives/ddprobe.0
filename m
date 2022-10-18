Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDDDE4C98
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D05FC433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666121453;
	bh=SUPEKMNwV55IvPjTYiQkZA+U4Mmr96QTGhg8E8Q0caw=;
	h=To:Subject:From:Date:From;
	b=fuIaq5psc+WLveY7PB/jEPDcCiDpSZFLProBmKOLh5cG45uDHwAYcVQGWbFLbxCWQ
	 q8G1h1Qj3DVnCLJQCp/51L/1MWojbVPzCOTWlAV2b4vhkXikcgGrWbCRTVgZf1/6Ow
	 Wh5q1U4KBoSwjscc3bZp0hkO+RHmuf43oEFa7bos62TFSXFzrhAcCzlpEMNXL3fFD/
	 RJE4rL64qV2EbFIMwozgI7jBCUnMEw5xhMcL1IfL+UwR4gOlbp/YDkl4D9UUAMDKkr
	 Nk/ZGvF6Vs2Y6jQiJuqUlQ8kpmu+gmdJ036BFmnG9aO8yDxzE/rMmdIB/ePKZIww7J
	 b+In4CWz+cHzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53236C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166612145332.3294.16313887974284933267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13b771dde1a3313b6bad7216e2830f68de372a1d669628ea0957a26f2c651d3
Date: Tue, 18 Oct 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666121453
