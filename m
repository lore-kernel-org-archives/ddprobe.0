Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB9615A0
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 03:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA77DC433D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 03:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682479625;
	bh=neWpozX+SzeGoeIvElFE8OSPYkNXckT+oFBNARie2/s=;
	h=To:Subject:From:Date:From;
	b=dQSaDEXVK/quhrnxW+EvWPCQzGWUO/H1uJ019kUYp3lBCF+RlCqFa4JPcDtwc3wov
	 qolduyBxG6XLuQj5JfUuYxnw0nlD3JtNMwlQbzI1Kmj1NlCq2fu6ZDGEDJ2TamjnfM
	 ipTdzU9jtrIrwVdD0sKrQLjmFv38AaQC2+0npI5aS8rmAgqTg9msFuuI7YXbDbwziB
	 XiHqVOIyohlXE7UfmDUpqSD+ucTfXBytEpK4BtNfFep/A4M5dIWifRIZsTt+6yQcRi
	 loLDEUbeSxlD8lstlOms0Z4HY4bkE2V9Ntjki9mqvSJQDEEXGdhsVAOp6ICD9tvkas
	 ky3vEv3xStrqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3B0C77B73
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 03:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168247962576.26314.5576519279105001266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ab33f9e5e16e8afb2a24b19a534dfc7d5d1b5e7efe0257ad0fc7b2515ffab9
Date: Wed, 26 Apr 2023 03:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682479625
