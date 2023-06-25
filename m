Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3BBED2
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 10:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B0BC433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 10:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687687988;
	bh=tmbVpIhz5cp19ih0DuDsLyexrM7/KqLMBJEkMstqFI4=;
	h=To:Subject:From:Date:From;
	b=o1RNBw3fYNpb70+4bF7LbJ97f2n4R6Mfq9UcuQSwJEJIzsXdxQOH0LaJw5VVvMTjo
	 Ryn0d6ioXXii++SJDKTPCaC8ZaN18FXFB2kedigOz2eMXrxmGq7e6HdMyDTXgchu7c
	 YuBJUwgxzfbXiekLDEvxd83hhcFh5oFfw0R8hdTlMEw7Rc0OP47cZKq+ST7JOFKLFq
	 nfgtkqvEX5AWq9SRWgSC8ll4HpkH3sb5d8gyvSwgoPq017gZ1FWRHFmahlHLIQm/U5
	 fAkiDCjX/ur61qf+3nR5piIPUdrXJfeuizrRHJlyd38POtCS3qcH7Pk8iboxEYMDUz
	 D/rGOei3A/Mng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A0DEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 10:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168768798866.28363.16981889457121384687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c6406a0a9d6747a42761b8bd3279748586ea30e5799e47fbafa632f408c119
Date: Sun, 25 Jun 2023 10:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687687988
