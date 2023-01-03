Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70F78F7C
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80644C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672785687;
	bh=xqdgijhRepKmOPg8IYbFmWNHTNVAOtx7mC9GpEuGNFA=;
	h=To:Subject:From:Date:From;
	b=QDgtpkoAVtGqkSXhv9pNaR+rbCBQTCPK5kMhkdu975iMxknLpBjjG5rwQYGRDjDYX
	 Wsl3VF1MU0TuayCVa7OWhX6Fp5Z3Mq/eoWkT6iqbjvCDtZisJKBd13mk1DAFzaXb+9
	 uALJ31fPGMr6m0YKJEDcuPDctkFF45u3RV+WBIjIe70QMl2gziBkGFVxs4UdMZfhAY
	 Mcm14TleacGXwHhuzJKxU3EEx5S72/xhSL7a0s+rtvLrdcP70rH4KEnCnL/81UbXWn
	 VORqhbyXCncsh/1DfU9hPRAWm4fIaNZaqhytyVoIZknSbFm3d4kFRcF6AmOYpXvqIa
	 rVcofMGBNGepg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69A86C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167278568742.23845.16006713126367029307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368e4f795ac0b21dd7cab144187511ba409be057e69c10673af218e5aca2b194
Date: Tue, 03 Jan 2023 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672785687
