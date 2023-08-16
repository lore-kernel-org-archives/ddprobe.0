Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE5D3D60
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 19:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEABC433C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 19:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692212588;
	bh=o7+5eJ485g0DoFSuI4gcRlJCfyIhPRjUc90uqX13ELg=;
	h=To:Subject:From:Date:From;
	b=OYLadXRN6n7oL+3DdjmrySjZxkG8SUgrTY0jAeCKPdQA1Zky3gzHj1j1/x/l152EV
	 PMmeFCzf90mtILfl+x1f6kQQ5eWNBRF67o+exUrA2J6LBDrmtQlTs5/a8a6jgedBEg
	 rJQah0epUsQEifhCLbnRwwYbkmmVR2PRLuPm2ubUMTx1C34Nr7p1BzoS5KZzzjI1oD
	 zslRpZ+cM1ucVReM8cr5gKYoUa8LT4Oc87ptsjZjBHyq1qxCvkbWiEIz/9VBIb8dsC
	 sMzi+ojLVuC3qnef3Xb7vK3L8MWAzkcZ6CDO4B3CIdSt4eEos4qbNHlPyQvobZu4U+
	 Yf2Ear/XElbFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B275AC0729B
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 19:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169221258867.16293.910618192125756596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d60b519847437433b3d9083d772faf37bcdc9291ec213b56c5371d4cb0c29753
Date: Wed, 16 Aug 2023 19:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692212588
