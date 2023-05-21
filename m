Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484F8A29
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 10:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0C7CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 10:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684665726;
	bh=15jh0OqA9MsoUadSzdGUuGj3fb+l+C8rR5g7Zw19MUU=;
	h=To:Subject:From:Date:From;
	b=P410Wji2heyyABkdERckLqaAmiCjqNO9v4LtA1GCWgjMtj6C75MLTIIABudjAXRVq
	 /jHUVScc/f1/0jolumoeyz1ulX0G3hUOQu/q01c0R3juDzfNYdAVOJqWpzBKgoOa4L
	 0yr4o5DnW3mrgOrOz4AOndg70bSyJ97Gn2fbwJJ8dkL1VJsrgzLk+EhbrUJ5CKwg/B
	 knCrjXyJuDByuuZpKYpQr3wtpFx/4bhkCa98ktBwY3bV4Q/DqOAGiCkaRDCCqVf+31
	 Va66JdvKto6zZmSnvxEaErcD7kx3hOnbkHo6P0IjDOlqHB7kA2mLjsLgAOzL5g+uVO
	 pACePH8fnlCXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1088C7EE23
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 10:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168466572582.11974.9105255249679155208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea6a21ea541faca86da3bc735238c9690563bc77e646c0ea97adebdc5a0b7dd
Date: Sun, 21 May 2023 10:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684665725
