Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E973E1FCB
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8976DC433F0
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670770887;
	bh=MQ89H8ikH7cQl4uggSC5zafFjJ3x6cOKN9OCzXZ6YA8=;
	h=To:Subject:From:Date:From;
	b=fOgikNdaGW8J1X/hcRpJgY2A638bP1BYn/nnFpeHS7mgQiDQpgbWeNwIGoZ/MaxWW
	 eqEGhW+WbH/iFhu2w1FLBg+Ehcf7CBSP1xoF5kVYZGp+rLlvM3LBsIsJOkNF3fmcuD
	 tIHpgkiWStBZZfiBLPvJzwtk3oQCkET/MQmafwgOalub/ro0jNz5fE5L/dSqSNQ0lR
	 Y1GxIV+ZycjF4m6cDBH/3fkGz8TVGniNtZWM7sIdih3PWEFwIT6ZXGhV2tEnDy00go
	 13dHOLxOm0F+TWu354BlZaUEK9ohFtviBpR5HHemqInLDYZripY1NCB9zFqcpu/4Qh
	 6ZWEplqBb/r2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FB2BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167077088739.3954.4847235746019755774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6107fab55c30cdfe681130d44d254eb24daa60fc1405cfeca10e9b3ac70574
Date: Sun, 11 Dec 2022 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670770887
