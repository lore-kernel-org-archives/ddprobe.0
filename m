Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16641FA7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DCBDC433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673940687;
	bh=rTqAOEmWNgToPfyN6gYGGYBYLYgpI7rkzk95et2Majo=;
	h=To:Subject:From:Date:From;
	b=Aidvf6PVlvkrz12qkplEuAGwIHPiAVoFNdlJogIB27tDO7q7WrBHSe8R1/yN9lHQm
	 xGnkPPlpu0hGNCVrcxBT5KKTrkxn0IM5sirOHZ1uBRDW5mkoecoNZDiztcL7wmhbzd
	 QRnAwnQ6mLdxO1ASedGh0tn3PBu571U8yiEdMHRkpuaP5ZP1pbHhfpqqMBEIDlMHdd
	 cAxlxRO9yCXsX3J5DzGkjSgRJ7yiCE4897Reta62AFZjqc0ksDIq2b+buJtktlLU+T
	 1VxSC5tvkKYVs+NqNUWfRtq9TCD5xXf43ovZhoSSBjopASzqPfcu/5eKrJ3xWcqVFj
	 Wz5Nvbet2kEPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 601E2C63797
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167394068738.27504.17190460797082950583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc87e6c4fad14cdd29dfb3612a090aaaafa2c975b9b83d5f1cb35bf9c33d359f
Date: Tue, 17 Jan 2023 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673940687
