Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7709F6109
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 15:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26474C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 15:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676475486;
	bh=a9cI/4CloE+nGGoOFINDnpHNtcxnpu3EgKBXYUZZ5bM=;
	h=To:Subject:From:Date:From;
	b=XEMERHjAD7bUSKFmW0q9T2GhPRD7r7qPTCqhUpcK3lK5qPGx3ZrX1+d9disXblkLS
	 fNW2YM4H7oXSFCHO9qTYGT2r+IGc8lXYbCgUWxUqOe6lpTQC0/hYt2shmTy4Of+Fck
	 +aCeizDuS30kp9AyDBZWak5bZszl1i8S0Auu5oObtoQQ05XPxdrX6sho9gnALDUkqk
	 QWPlPAGtyvNaroSrcnIrQA9zkCB9E0S9DzAfWcNuShuV7G5mQPPViYkU48nbxR6dwl
	 qqCDBPC68VTTF01k//4YLbxa/wY3+77c56M72jbXL0+P/Nbw8pOrurStrc/0HdlGX4
	 QwsfKP2yqFB/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA41AC636CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 15:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167647548593.4532.16076001182153759987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87fe0b3ccd5faa160654aaffb883b61e89053747fcbf9a7f6ac346f679ac8cf4
Date: Wed, 15 Feb 2023 15:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676475485
