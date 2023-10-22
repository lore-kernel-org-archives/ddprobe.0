Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B602575
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAJyl1o3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 848BCC433C8
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697999296;
	bh=pwqITiqD4vEd3QFfkxlEBc+y1UXw8E9qbt32D6IvxH4=;
	h=To:Subject:From:Date:From;
	b=RAJyl1o33/Is0F7kpmgtj4m02jmEmL7avfYP0NBYtGXvxhisWNMfSXDYdR0smfVFU
	 ylQzelnJ14IeHD+BPtuGxyvQomuffhSBP/fdgHhhHiv/RYLYj7aldBn1k5dHBEs2Pb
	 Pysa5kBNvrBV5FXR1b1P56lmv2v6ApKzyZuZ9c6AAgrPjnk/R4vDoYRVMjF6kz+Yh2
	 KZyM2wtFYI+gdJG28viLbY0qTwPu9K2Q7Nudx4CHtkk4NyDTNmYb+BchfQnDmPQf79
	 TmhBrRkTh+7XKzTELi7b53Ks4stP9NRRscTRaDd/2IR4Mv+eVjnZU9K9t45OJXbJzA
	 sidmJilEBjs0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64540CDB474
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169799929638.18996.1885784014429466379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95972fa7be136020d4600d91e411589c5d96bba8da65cc8e831ba89946f2565c
Date: Sun, 22 Oct 2023 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697999296
