Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4BDA20F0
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA90C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666417253;
	bh=oFboHgj6vIBiH5rEEtVHGIFJPIVz2Rfhi3hxfs1zVoc=;
	h=To:Subject:From:Date:From;
	b=g+L7EScTL9ec/u5dRlEQfhjKzg87R1dVsWJEv1uIaXluKa+Z5J51xiYzAFUsryojk
	 meI9CtG+F/YCcnIX1+HDS7BNUjrv8m7A0QOKd55Vn6uDgfBOtPVU7jqHgY+M7JvqZ4
	 8sfbpTyHsrV9JQygwSWdCr7iZ1XEa0ac66liY8RwAJwCefj2NMpRDbraLLEFV4tJZQ
	 xUz2BlCDw++PVn6N3yx2zPFbG2DeSnP9hlV6t7QMVayLHQCwmLuhjs6/GuLdlPjlhQ
	 xUWHyjOjaWWQw5OVsfEszBkzlnzKm0dpLGlVmiYL8TvtiJUTuurLVZm2xpTuST1rJL
	 VHs8QuCMDqsug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F581C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166641725331.7753.6673396690281117752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad9dcdedc474e368333da2684d7c8330e2de2641edbeebc6c9f6e47326056b5b
Date: Sat, 22 Oct 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666417253
