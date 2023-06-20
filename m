Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A51517FE0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 19:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB397C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 19:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687289528;
	bh=sa8PnjxnwynNCHoHSn9msELsawnWtp6651QgB2NHL+g=;
	h=To:Subject:From:Date:From;
	b=oBxiRQq3+HkOK/bBuchPB+hunZ7636Hk9chSbh5JuQkccVp1uR9KpTcEoRO8bL4cY
	 2TFTGs04zw8PNXDIj6tYplxxoHRvvBC8XAKrcSmTaAEegyn+trLwU2zxFuS3T5FYft
	 bvuHp65OAe77FmvjTvKWbcYvLvL/KxtsHOw4Wr67J1lM2wq0dKv4hIsX0IH72VbNXd
	 JGERNQgwp6TXt+aCcEjijRuzabZCrg39csmJNFFQkwfQQU33e3JQxPOjbbZX2xbxtt
	 GNinXYf4xl64iQOC9maPVMlK08Y2NTOE4nLOGny5koxmywgipLV+iwg/GFFsSvpnUA
	 8Bk9dJdG1vwxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC818EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 19:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168728952869.23454.13737275036935005405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d7ebcb3258a2d77e9be59667cc4dd7012758a1906f9482373ca2a7ac5fd063
Date: Tue, 20 Jun 2023 19:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687289528
