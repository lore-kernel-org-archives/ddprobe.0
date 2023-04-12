Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609CA3D78
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 13:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E21FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 13:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681304526;
	bh=0QOKUux825Y2G6GR1Ps/dWoAI3dJVKbHMdep7ghI5xk=;
	h=To:Subject:From:Date:From;
	b=g9TmeqWxEomCywr+XYaPYdd7n6ibAsb47UTPUyTuiFz2ApxJxhXVdebiX0UIoNW8k
	 KjrHM1LHp1Sj6AFrKnbleTDI+Ag1heUXydZ7sGlFr/z4p8jnJpeuZiEo9C8asAZdW4
	 LgGwNHtRqDQ1leIKdOmKbANMdioIJ72JbiD1wGa3BUvsfEuGlIBzGZCBsbgqciEi/n
	 buzHkm/rtCNHMbQyteYqIDPqlRK1kBXXrXTb+dnK+gpk9RvgWEHJYuKro6GHx5HMI/
	 8fSCtzC7c+E2tV3JuEM7PKMREoPvWDgH3P+Bbwu1UaBssJuWQoZFgxEgtSZ8tYjrI2
	 yT6xG3B75b+1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6679C7619A
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 13:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168130452593.19264.3293992663090309031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ce0ad341803be0f7a7c2462d83f92af52d281553be44dbaae881833eb477f5a
Date: Wed, 12 Apr 2023 13:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681304525
