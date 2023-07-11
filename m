Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C5D1428A
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 14:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A78C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 14:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689087428;
	bh=/Oi/1tZ8brfJ7dcTR6ZkqbmbtzdxUyUNiZ8gR3YQeGk=;
	h=To:Subject:From:Date:From;
	b=lo4k+irAGzJWhJWlh6jpeW6g+TQqIUyryQN7sHPXmSZ1JJm/lT144kPDJ/dEEwx13
	 mQ4j6OcLxWelQU+PRqfDj0GISxjJK1J8x7INb9mPvNKDDeTgOQouOdsDxd0GBtBbT3
	 YSM/TO/mSjwZw/+VorkYap5yjQ1MQoseUacpB5N0o0yLYeaLhnNLo9jZ/pfm8CmdqU
	 O2CKp0NcpEY0EgpLqJXVztidM7Yo3cjDRqRcEvGLXlLGy8SVEYHbZmnxN1hcEqnNah
	 bp/XidFpmgf1NG6j81It4rDauXCC2cotV2oDZdMqen+w+z08rA/lOu+lcBDcxP4MbK
	 PW2khnGdzcqcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9652EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 14:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168908742868.21238.12478078874619859254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682ff75f43ea2f2b4ea180951a438039aecad61519bd0de0de5177b312105b8c
Date: Tue, 11 Jul 2023 14:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689087428
