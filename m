Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C436E7F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77374C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666008653;
	bh=/3qudHscnCl5UlZ9Q6ZwmwkeOw2IJK3uEyvEnS/pohk=;
	h=To:Subject:From:Date:From;
	b=DGWd9JS22qkPIIq+6dWYf5nbNvK7JIxBM1TaxXs2yUW+0SZ6clES6GKC0xlmj5rYR
	 zZmRl4J7P8tSr4ORuauhEAI2tqtPx2N1z5w6/Qcw7DtVOiZTqhihG0/O7EMybt9Bxw
	 8Mtty4ZxvuE2nUQxqxrxq6VSRr8Dr3ubokcM7b7sIidRQwjt+4wUgXpWb556+7HBjB
	 tnCPCJU2aVhmrFUqmdeBuDhpJpCT//tLV1iCg5ZbxtHfa4EDbsmHIlo1iVtUMYRb+D
	 pVlc7z+fiVM24iBghj0RxIBzx51101oyGm8Q0pT/U0N43hxKxKG+2FFG/jZyrxH96O
	 wEkhRvoml18zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57785C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166600865334.11955.5322690243411596965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 929f341b525412de5ff12067f611b676802c14d43106ebb8cfed21714b9df798
Date: Mon, 17 Oct 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666008653
