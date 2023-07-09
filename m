Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DFE428E3
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 23:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BDCC433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 23:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688945228;
	bh=UP5EUE45h9Wc9iS3qLLXZdArpRwJXf/35GXkcnLkrrg=;
	h=To:Subject:From:Date:From;
	b=KzV3dp3+qt7ys9xreci+f9OsbHRuQ1SfAmQijoYS+G5UYcR3i8WaJ0rS54tcTetRH
	 LAJmJo76BOegVskzpZflKFJ72hQX0/Hn8bJqFgCqOHs/EGTa4mOVzbcv8g2E/RcqBU
	 1J3fvK1lQhZ0Ipr20ch7nrxq0+poG9A88wjDOvWvB5FXeL/Iff4bhYanNR7A3R0W5w
	 weezPHBQRB25WkgSo0yEygckAbrzvcgB0mCfPVPJWyFYXU34bNhRIBDqmWf/dITnkD
	 5u/eFAv89bsLSXhPiXkJO75ts2Q9xU2yHrmbcH0Q+CehwipRWVxlppI7G2w2nBD8BC
	 Utz1d8whCJSCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66CAEB64DD
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 23:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168894522871.6966.1513800753208624761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 147bd35e66f0ccd6f7b54e776fe420a638c7b8c4e1bff525e0b29ddcef83cd0a
Date: Sun, 09 Jul 2023 23:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688945228
