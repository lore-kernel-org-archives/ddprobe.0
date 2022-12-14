Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C408470
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C98AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671027087;
	bh=uAB4IHRZiSJH8Kit3IhCP2yVsg72Lo7JLnq07qgVUU4=;
	h=To:Subject:From:Date:From;
	b=tXmpBE9vIR7rWWC1nJD/D7MRdhRWUUXkk5kgCXG6WUUksao7s+2uq5liF9HK+GFCr
	 wDn7LBbweA2YMav7XINMeER8AtiaTuROkgJKKyjEvzhmh2y9aGHhgYjFk5QDpu3Cui
	 8zVv3fqENUmp3zFVrOySTNDaDBRzmqULLb5hX7FcxQjoEwR5RCGBcr2nr0nFCmIf7C
	 6RU8EF/MgLv/QJJA6kHOoRClolly0Caa+uFEjjB9s82gLSiVcIlXzAZzFuHK951zOi
	 bpFK11yNbszIyaDH09dvYUOvIzOgQgeNygPpWz5X2Plce/zUX110wzLKY4AUT0XDQn
	 o1NHuDyOuqJmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61182C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167102708739.27983.7877040544608829184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 046342adaace2b09fe0be0be2075b88aaf9eecb3aeb3c68b4c0d36741aa24fd4
Date: Wed, 14 Dec 2022 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671027087
