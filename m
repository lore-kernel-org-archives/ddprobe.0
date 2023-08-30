Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6AE20E3
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 16:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E23A0C433CB
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 16:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693413248;
	bh=UMWVewvsCliNWr/4SeJkYv/ahEIHFmqrOhYh9PwsAiM=;
	h=To:Subject:From:Date:From;
	b=azxso+0UvjMOil9D0SESTgqTVVmjusHazVAtH6YOLsjeqXz32yIIoIx2zPR1ulPyX
	 9vnfFKPmYU/RYntliMOBCGZyf0vcMtDSgcB7vK6EdJ1iDJX85PmEbLFDfmrhS3m0Tq
	 ndhWyS/FgLAY/86Rq8MNyq8w7eraSn6eIe4+bU8gVaI8sTt04oA0ggjz0zw/qBJ8d2
	 G5Dvi6HN7ticHQwoq/drnXYg5voANfbO8SWTDhJAobWKAbMfG2qfScRX2OTguQgYSa
	 h306Xp5dW4s2PsJYptcUUwGBkaI0ccnuAQc2sogC8j3aTdsLDnwJvnZtFlXOwa1EdP
	 zSDknj47cxwTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D83C83F15
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 16:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169341324878.15462.171061797200987190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b6dc9958edf4ec973c3e9ad6a83b96d9f5be29e65dedcaaaa6abc12a780592e
Date: Wed, 30 Aug 2023 16:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693413248
