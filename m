Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B24EE7F
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE66C433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664079053;
	bh=nvwdolo1CDDlEI+Fn99FCLfMNjhALDlyeMJES0M63hs=;
	h=To:Subject:From:Date:From;
	b=I+2bU5nKZBniyXICAuxY/61BZZxUzh8uBtlk1Nq3NoMArxPeEJoEFeHhKOL4B5wpZ
	 SjY3z6873y9QsnxBTXE2BcwJShHFYQ8W3iNCJW4r47JvSi3h2MT1YZTkn71d/IySy2
	 S3OMqpO6W+mYO+qKeuretByGPfhR7AZMhz+FyidF7H7Euzrb0gXM819kSrlWRhJhol
	 qrxLvyxav7uaA/OmoQQ0nCSNe5fD4CrrfHA9mDsdERmAqWCikl3KrGx1ZntGKRoi95
	 lubX7eUvoHWBVqH8TPA5M0S1KQPy2NB5pdr9NGrHXK+hdbHhihgbWmCDKtyWl1rl4X
	 vn+rsSqTqKHDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53AABC54EE9
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166407905333.14045.5553450260866319918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6c25fd7e92d6b61f6d764ae42e1b8c6d32e4058e82e6410828ab4664f263873
Date: Sun, 25 Sep 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664079053
