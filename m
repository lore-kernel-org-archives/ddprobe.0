Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD66F7E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED1AC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671322887;
	bh=u+yyOpEU1yRqn9u078xIkRHHxFOJZK9BPLqFSEPpEeo=;
	h=To:Subject:From:Date:From;
	b=d9eM6aJgS+pZmcnNl7YEarUXqtfE4Rshgb5rSSUNMLLfIfOpUQe+El06TFjErC7lw
	 r216ucCl1TP7cVrmUKDxFZAJp77T3bs6d513KGex93ECApu0SS8JPzZUP4U0wtz6cY
	 FFgU5UwUf0NcyonpyFzGPe2kvD2zBmxxbdA3MAOA/WH/GbkpRSLSNwK/WVpFFdMgnc
	 OqBpjBYLqlyCXu0y/soFs4C7sIS5St426i67NGT0VU0gckJk2YsanhoNCTSzXZ6EB9
	 mX/Xjx+dJjSeRO9F1MSYrgR6oRhyzt7c/S8F2L6X2ZajiBTmg35XXkBsZV5dI+QQ+2
	 iPkAxQGKSxHyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65458C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167132288740.9147.5418664295167306210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb32120cf193517338872fdd5f7610be927b7394fd917dfd75873ffd3c5baa23
Date: Sun, 18 Dec 2022 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671322887
