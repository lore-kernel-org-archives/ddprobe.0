Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C7B1FA1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 03:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD31C433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 03:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690341128;
	bh=CaiczQD6uChkHtuHNvyE4VYdYdi0f0eG6voLioO6HLk=;
	h=To:Subject:From:Date:From;
	b=HLfoLauPimSV9nFm8mtioHfwBPdMdNE1MGZB+yeCid1cD2eZfze+ZlZf0izczB78K
	 pheLvMv9ozAx5F/89bqZv8IIsKiNGdGrtdI9HIn/mUU5+9ykD9b5swb5I81lw3Fp5W
	 J8gPuyxgAZZX/YldWRdLCJOF2j1duhQK4J98CZnQx9r+NwOgdHQj0Ky873orfHH3qk
	 5Q+a16GKnVSCAJLJbys+SfSLjhwVWr1gk0ssrbL+uBVpJSCR/eMA7hrKmAj7lnlUYw
	 0QS4SFAfGiUTRw1mRcP5wEOxd+jO/yQcjwpMl7gWezaANNSniDm58RJ+uJIxxmnleo
	 tUZCQ+sLNtutg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4978C001DE
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 03:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169034112872.27866.6080061481702925536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 542ba7b445aa946ca8e15ce9b7e5f2f446312cc846716f953a87cb9481b18d32
Date: Wed, 26 Jul 2023 03:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690341128
