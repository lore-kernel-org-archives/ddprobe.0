Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08AB1C2E
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69CBDC433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665358853;
	bh=52GxvttUIpeait4LKLg28FLLFYkzRmpEQ08lR/NE6J0=;
	h=To:Subject:From:Date:From;
	b=sSUe9/GQcNl5R2RfZecYe3FyW46p3UN9jk9fWJZVCC3XePaZCQfREQ8gxTMRcKDoP
	 dPYHYmgGUCNt1UKrsnQeKk0OK+EUvRwcxVTbi5SZxLrc0do3l8H3eDf2C4AMR8C6S6
	 4vPaf6ANyxN4WvfkoNaZ40BMwdHJV/S2a/74O4+38fJOLFXzD6jkSmJjVL0s1l/QiU
	 u/RMKP+2jyJglIf/wXtLvlH46AwjNsnYneIHlwc8jPw/ICRmkipHrFZEnodCPZvohv
	 yB66+egA13wehY5Os/fAqsG/8FZIwjVGjYxyjld4pJRnw71Qg8j+RvtXA8kjzkOYfj
	 7BiD/bL1JrLpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F730C433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166535885331.30309.5656638969374811802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c1c4dc0ecc19c0204c8d94b9689061f00f8b7b90a7ac2411622ad23687e3bb
Date: Sun, 09 Oct 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665358853
