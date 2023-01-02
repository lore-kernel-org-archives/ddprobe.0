Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44B85667
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF24C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672680687;
	bh=/22aGSzAik52Fzf71SnMz7AChSRgPuVGW9dXoR2SEpE=;
	h=To:Subject:From:Date:From;
	b=TvxEU+ocV5VT0EZcd8yu6UnxDvEeG2nZ+KAtrFeO9CIaKW1d0d0kewCQt+HBBegDr
	 TIF/r4s1izEO1eLyJTzl8hpwb2tp08Dbz1CO3daatA/g6YTC8Ji0cP4SS1hf3/vBj4
	 0eV2SiRfOQ8EdesyaqnVYL2BrXPN3gUd0n2rAkMcfxeUu/q8Eq3WGmrkQVMutXx39h
	 OaBBRJFJ4dpgEuaZMtvYtIgspKnbVINn2O+k00inFVollfsd4uoYFvHYQiFqb8DKfQ
	 2jRDqzkC0kg7gOEEJpwR/svcDE1Mpu4WX5vok8F1UOXL+CZCHNNqy23CWII6MdlZLZ
	 dQVhl0MRpsmuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 628B8C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167268068739.13010.10237647737332149378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d31a828aceba722a7633458325ec5f031b1d1afd3205ddf921866034380415
Date: Mon, 02 Jan 2023 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672680687
