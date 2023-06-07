Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A17139F
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 14:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5447C433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 14:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686146525;
	bh=SBaE/XB1v6pRKkBJMwZCG0PDJCmeqt+ZUw9mHHXMgzc=;
	h=To:Subject:From:Date:From;
	b=U8UlTzS5IVq0kBHQ4dqPXyIhn1/onxQR+c3/+vowbUc6lzpxd9zYeFZf3rw9v36yJ
	 4KwrDfc/YhS95IVLbxBlX+ItpYxqvSFraVdCMrFdDcWfB0jfmYdy4nLAXorX11IUq9
	 T/Qc0z8R90SZZdCLn77lddbdj4Z/bbFYdLRcXCf0Wsthk99CLb986ZtEmmJlRpDSDP
	 SW/Q46wnY+pVEzaBJby7+ZZvTSipK6otzgxHuSzIts1UhlcjkDwent48sEW/NALZCK
	 v4QTEg7JWr67JDsg3oFFJoRYFS/1o3ZtfavZEczWaoVItqVERKVfRwFVotS0CdrJXh
	 bZ4F+M5fwnLXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C04C77B7A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 14:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168614652579.5784.13078330900235366696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e514800da937f094b3a4047073ff048362b233d5af77cc7423bcd24e02916d
Date: Wed, 07 Jun 2023 14:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686146525
