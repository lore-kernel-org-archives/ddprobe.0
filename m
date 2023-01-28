Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B24B2F47
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 16:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2247C433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 16:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674924185;
	bh=YmVl4GqJ+gU8y9gD4fhhyzBBNWly8MpWdwwZowCWysA=;
	h=To:Subject:From:Date:From;
	b=GrD/jZxby33Se4WkdmbEu4Gi3QJRRg07EzrpVfNK+iwk04Tpblyd0rMqUsO2HHFHP
	 q+DK1/Z1oF5SJUkGKo4/PBPIWcr4Al25dzg+xpPBH27ss4SdWfcmcF/aUXfAv91AE1
	 0mDlJxPJSH5Mw9RusGRZlRJNAfHhADZp747rDsKj1KyH5mAGnpycYnbNpIBAZAHGRz
	 ttvfTZMvxh6AvQyKmwR5bK9Djk9EIsnZsFA10bAyrckcHXnKoGUOOepKiXynooFNjN
	 PkYY8/kgdegG27izyqy0Vq0KT1QuzTPNFu7TSzipYMUgqI5fudzDlgdX1vOVzL9PRp
	 ixZo+fyxRcttQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B694FC27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 16:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167492418573.12892.505104239850603267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1beccbb11f3866fb5efd17096800c917782e1f423cbc20a9ea473c8ebbcf69ac
Date: Sat, 28 Jan 2023 16:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674924185
