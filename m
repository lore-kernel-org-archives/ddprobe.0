Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9713622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7114BC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662706853;
	bh=uG6vU9mK4DjTuJk9d9yHn1lT2f+qOLCTxGVuGdb75vw=;
	h=To:Subject:From:Date:From;
	b=i2HEfkGee6cD5dyxLTBz1w1k9BCi29+9NqlNUFMLAaznUtVfFQLfJgaff63LXnv9Y
	 VdAHxySBpuMhLpBuCsplLYRYiwNyRzf7vkvDncpkp18fJlabQrbNDE90IXpUR2iJIM
	 wGvqjoQr/tkQGqfgFxFmWkpOKoSmJNQhCpj+ZpV5igiv260nb5+7Tle+ZxQ1hUW1Jk
	 iIdscKHRwT76WsMZURR5P3CF4rDiMDDidC5KUy9+zdMbQ7ZY6pHcoUQFKYQ+WBezQV
	 w8FpDcfCM8QBaYSvlE3asldbBSngZV0xOnhDEfBTrXiE0v08+LuMTTfVTWxZ2BhSgD
	 EsrTSDhjGz0aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5575EECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166270685333.6177.15047164355096983520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12fb86ced78350b38f847c43430ef12fbafc31e5d4a275f84aa221ef97a8137
Date: Fri, 09 Sep 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662706853
