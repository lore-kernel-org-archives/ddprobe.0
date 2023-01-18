Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12C17B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 774B8C433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674005487;
	bh=4vm28/YFC93zLPSORsxIbXRKd8rCovKckp6J47Mc4LY=;
	h=To:Subject:From:Date:From;
	b=AsAkAmtcRewqkF9EwOD76fLfex9r3u1faBS+I+NQT/AFTET8fopyVEvn7jJx+mCeC
	 xvxZIYov55F3TRmjUMrY1L36kG9wBgcYsHvOW7Jb2+NLYlOS2ziI4gNfp0fYQ1JtY5
	 evwIP4DewKqHMMBMWK0/Y2uIoVxwhPKrfN4p/gXLaBwRClNXOTQK6UevpFaYdk6Zen
	 gtgdwKUWOKmuU++dcN3isssKqYRSOG7ZJk9I81+o9/x50aYXNJ0Oisc01izUvgXHAa
	 ABsWXgAGFsOjJaQEr7hq8yOOYdfrLnEcR82j6kT0bMXr/F58DeV6U6SONKX/KWEQld
	 Q+RdFlJfXutZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600B3C38142
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167400548738.27113.5765140155444920050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c814bec5d5994cb8b851b8ae7cf555922e1a68ae7f2caa11021a0407819be69
Date: Wed, 18 Jan 2023 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674005487
