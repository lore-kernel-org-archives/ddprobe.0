Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1891877
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 09:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7F9C433C8
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 09:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693386248;
	bh=mtZPz0CWhBME3jYuJgQDnnuwheqCQ7ZOLQF8LSfIFPM=;
	h=To:Subject:From:Date:From;
	b=rFkriORknoP3mVj3AGJVO5RnwrbNUBoitiunexd78BXTFTyaS/wzBIzHTvhXPPJSd
	 wjKp1A55H3I0Z9jCc1PA+RhwFk1mDoL74KiIHJOSf5vmRaLH+l+mghMFRmHYz4eAyk
	 6rJeCBDDegcuoZnQBcr+aYZn/QVxG+vbinRfTxosJLSfXiygRTsuS9XLazWUwwDw1e
	 6JnSP90ccCLYp7DQPkL+gl3cyAytTGZKh0n+gypmgbuRYfkKUz0D1dJ9mvGQd91jVh
	 QrwHRfVZwi1NbRFoPkzEHyU+Hn0zBayKpxap5i+aBQtInv22/lxsJIV5w7Fn2Ut+Jb
	 yZCW60JBzvjpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC46BC83F01
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 09:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169338624868.11197.916281008289095887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3595cbf4786b3d5c1ef18b3ac48eca05cc3a25dda9161339a807b9620769511
Date: Wed, 30 Aug 2023 09:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693386248
