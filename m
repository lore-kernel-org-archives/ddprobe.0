Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74090746A
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 13:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A99C433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 13:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692624848;
	bh=WXBa07MXVGnDc71vVWeaM6QPU8wNSCvICxvbH355j0U=;
	h=To:Subject:From:Date:From;
	b=KsF1wBQ3GusBvbxqhoWnxvRWyB7SJnW+KH+jSgVvv+GnGokiwcN9ZVxx+VpvSpKCh
	 B6nw+Kz3Zl8S7L6S6IlfZ2W2IlcTjlB/gbJfn6TVdAPn4Ly56Xe2zDBMJKD4Bcrco4
	 gwPX5Xpueu6AxY2qLz0e9G4QLDdp+SB5n3ZG0bp3tbaIcGux/ueW9zyseGe4tzF2Ah
	 8dq+KMaJEN9QLNLCHUl9X0xehE95pfetaOYjz1XMlRVn3LCY2zxmdt4/oLDpBqE04I
	 Kqi7LrrJiRhH6X9cghbT98Cw2znsoB0zGsNO1/Dzud9y/IItxtTYyQ2evvw6d2pH7L
	 sTlubv1/adWeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B88C6EE4996
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 13:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169262484874.25816.15122380670561386087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44122dc623121c4ff3a86b38b0dc47adaddfa49501582804a4a69f20b18bbc0
Date: Mon, 21 Aug 2023 13:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692624848
