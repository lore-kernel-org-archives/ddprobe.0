Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5070219506
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 15:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7448C433C9
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 15:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687362188;
	bh=SUNYPU+Z67JifA27uCt7+E0ByJaWOL9ZY7jeRZegbaE=;
	h=To:Subject:From:Date:From;
	b=HEBE9kztI8k6Sb4vwogHZ2rmRvGTs/Bb7lXHa0b6oVHnsIaKWNWi3DHfN4OUbV87k
	 xKjj+piILgOncmT9asTUKaUSHLE2kGb9B/lSfIYTvkw9Ms8+y29u5gEqARECwnEQZp
	 6gMUdFPLTTGca3UgCGmGPdM8WAHrdlxd2GkpdydwhGnsxlvyaidfbEW4foG0iogBZI
	 d/NDC8/tHy5JCkZlqeqdRdQ6/nfWKDdGa7NQbr2CV2oSM66scTfza2XSwIWagqLaEN
	 3jrsAWm4WbnWhN3UkR9Q0Z3te1LzWaWGzkDOrBFJ261QCSfukNMSfVh0tXeu4kdojB
	 9NscXPeLNhUqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD28FEB64DC
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 15:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168736218869.12433.510617535650919258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c3e2b3bdcb4d807c9cae13867a08d5f3d0abbc9fd9628f7c4bfdaf3d39d8a9
Date: Wed, 21 Jun 2023 15:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687362188
