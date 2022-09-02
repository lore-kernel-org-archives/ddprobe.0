Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6CFE7495
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CE26C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662154853;
	bh=WowH5b8PQnf76MLLBQbNmCXl0d6+xlFRTPjoYaqoQpw=;
	h=To:Subject:From:Date:From;
	b=tL3gaiMtdvHqpMl+B6m7OrdUiA8S7FZDO0EBGc1Fr4oweJyIe/CSHhSfMik1mn5j6
	 xc4ozzD/CRCrTeQGFE/dDSsRnOpWdOoC99WjdPOUEK3aIw2bsjwlzOOYTvMUA6WcFh
	 VugvrXQhqSIajgLdVGcApmBmBOANS5fEJSbR5rlUan4C3pKpDQBaR4Rl4CS6agqn8v
	 qlxlrwzNH3ylHsKlB/eCSa2LOIM0ckJVfF+L5W2yC2KDw4Cf2rlau+Hp260e0NMFSj
	 S5vX2GtR7USVbHcZ62Kxg1R+OinYc4FS0+94BfYJSwSyjlzfp5UpftzXRuAV2wZG4K
	 T47ZwpsYM4Dkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53EF8C6FA82
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166215485333.17418.10936385712066093831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec25a10dc6234f1e20c8ff1060d9e6ce431bf3d363ceab2511216c7ef39d9595
Date: Fri, 02 Sep 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662154853
