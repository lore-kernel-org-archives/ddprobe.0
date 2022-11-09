Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C203E29B2
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7433AC433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667997654;
	bh=Z3KcUZHa53z2Jcf3O0ReWgIvCgYp+IGyMaBGY4+7RAI=;
	h=To:Subject:From:Date:From;
	b=BojMfe3H5/QXi7KxN3bUhgP3/vJXmAuuusPRRgjPr9xLr2+4J8OYPz40L8A2qk2Hs
	 SVCB0oSnIcEyMqEEJSTPYTlgVu8GxYQipaKYHRu/Q0P02GGADQrJGiYLEy9l8IrNUe
	 V5ZT/DF7waoFqOWiI7jl4bO7yIyh+xirpgcKN6QeFLtVkEaPUmnpeU784+DDsdCzz1
	 G3A8Y/FbQ5JPWN4XBDF4f6hhROy+3f8hLVxLsi4W4RKF0QWzhMAGy1gKmNjvJmDchv
	 xTq13uCzN/cHMTp+o+Z38EirNzs2Sg6pYJcV3OsGWvaqqjWtEOFC0TGpvdIWVUB+GJ
	 kp/tMaQH3o6uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58F50C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166799765435.32539.7511575583500330748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59a21df49c834374cd9dac657da82b93a14ab5ebd7eb3b2024a32c9f9b127fb
Date: Wed, 09 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667997654
