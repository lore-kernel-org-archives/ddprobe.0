Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCECE122BC
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 723C9C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666997454;
	bh=+VloAKhsA6AmE4xmUmfwrwJwliVaoEyU48WShoQGZDE=;
	h=To:Subject:From:Date:From;
	b=bs1lcJCILD2rBj9vxojjtx2bfRVt7hmBljnTVrsAx0I6ZSz+LWEPwUFit+/et/2W8
	 IyHp5F4dAhnVB2ugRCt+l28ggla9SSSOnSGyDFmboXdB9zeP9VftRESvlMDUk0Xtt4
	 SfmG66m0m9EBbFel5RqfkxTPK3lp9YdKxjDYU+1FK/sClisefNQ2hHiBOP6fzu/FOR
	 e6aKwS+CUvYk6z4nkwCj3lX6Dh0gDIMVU0lyQ9bK+N1fIfs0wN2n5xlMB4KJJKdnd1
	 2tjAyrb2MbG+9OKmNmlv2TohrGQP5D3SN2XD25jpT2joU1aPVEx/D6yq//CjWCM2xM
	 Vo14kXt82GJ4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 530A8ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166699745433.29637.17713370831158419789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b61b61694858a67fc59d95bb45ec8f918193beea537699ddbf88281bbdb27bf5
Date: Fri, 28 Oct 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666997454
