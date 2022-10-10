Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1E94185D
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 667FAC433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665379253;
	bh=Iug75p7s0+xTXCxTveFFH8bDdcGlM3wUp0PIlupLDUg=;
	h=To:Subject:From:Date:From;
	b=B3G69ECgSI6iHE7NDxZyUhqzkxzmZXf0+osigrre4HoNjhfC3zFqWWzOQqbvwI/Ha
	 dLnPbK2Kbh5n4//rJoL7LENqGHuxi2oam7FWFl/HpPDnPjoIlRAd54sZV5KxhmySjA
	 sL5Nntz49zEUc1B24bvhb8HWJ096ejSxYByM4iWo8qEzBNiRM1C2shUslDTxdthq/w
	 VMEtyaNLBD+rwJg97smdEcGOT5cE7f1p51ls0czS7l77Znex/p4hPAKM2FtqzvG70g
	 xOVhmZZyXIixTn7vaPgrj/Ot8dmw9YJu1J5RaxXmNq1QVZ3aH2DrQNxIIOsZgcKvPd
	 mf9qfvhlo1xLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F855C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166537925331.30517.12431279152082006290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e0dcc6163470f1cabf082fdc536860fce1922ce3d7b05949ba520c1bf88ff88
Date: Mon, 10 Oct 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665379253
