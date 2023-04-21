Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4909920EE
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 08:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3DF8C433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 08:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682065685;
	bh=6NMJvUourDC8A7oHgmcn4kAwVa9RozholUY1hLYtDXA=;
	h=To:Subject:From:Date:From;
	b=i8IjoirpvakOgOmRp6aThmorG4ubk2xnnVenLnBbgsWqw52p6GauWDNE93Jr4+SrG
	 rhRTEgQNIErW+m0hJCQgvejkxCWNennioDr/7KUjukXuqdXzCpM3QWRz23USw3zPbQ
	 V+o+kF2F2R9xpso5GzCKyplEtEPQ1Cxm9EIyDDw4jKG1MMO6BRvgA0DSWzKZlN9aRJ
	 glkALwYQbsAMSgIxj5fsVeQspyF4fXjqIDQBBmb2quGlPkY58sdtiG+yeiMnhHpg3h
	 CLS9buYE9m5jV79Rh5zQWUH8B8g72Mkqppn7bbP92Kcv53scPvBKaqWATHKE9kqQpK
	 YQPKwwZsTl0mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6752C7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 08:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168206568580.7826.7437776220877841769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b5993cafcef979371cd74802e591511a4e9f5e6177478337831d70c068a2595
Date: Fri, 21 Apr 2023 08:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682065685
