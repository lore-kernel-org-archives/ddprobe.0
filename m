Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479185228
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743646796; cv=none; b=t95WC/CmqYniH0X2OCxm/GfjZjCMW9KfacX6VIM+hNObybX/a8xZsNcJtbrSIWb6OFnSl1rwAcrqfU4/S6gozTJM87pe3cv8b8G00ZjzYk5Dq44BNWeN4V53HFBDOkcBiVcv91RURkOvBfSPfJzku+ihm3Ux5Wjtex7CFqVQO/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743646796; c=relaxed/simple;
	bh=2ooe9eOLDeeJC9UOELy9NA2kiAasHo8Xv+xo4aO5Y+E=;
	h=To:Subject:From:Message-Id:Date; b=G///XL6dSDXODycoVH5lg5SFG4/iKwPJQ0pEWHftXekrwg3gpTHaUetCe0IjMCXZ07mFlukWPJPdsnCirFca8IselBLFPQLrODKjbTi6pUOUa6MYg8P+EodKnY56o7MhE3osLhPbdJf83g1rg00xj0DnkoikNx55bwHs93HbrOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgphUZsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgphUZsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D59C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743646793;
	bh=2ooe9eOLDeeJC9UOELy9NA2kiAasHo8Xv+xo4aO5Y+E=;
	h=To:Subject:From:Date:From;
	b=KgphUZsHfRYck91w11JOTNzzvN7rE2i9QatxYqMgGc+7wX/Gi3nWna05OIr/cWuUO
	 2QfiLqkID/lKaB+ORXHHzeZlV2fadb6WaE0k79zpeOHdS4E1NbaootiUHcOPBr4dgA
	 L8lPcX/KJa04MoIZBFdOOZnz35qZIqTRGxWwta+BdipK2rIkqUMaXoO8QVkifA+kDa
	 7neXkLLRt31aBKG6dLTF10T4eN/bPYqQQCgqw20Arq4Kgq/KQoP3WiQeX280M/U/M0
	 CG4qvoxM8KDeQBkJOzKKpxJv4bbbcf20v91uXmSRNRBjyVYYkMcJn3E+lHhshX0AbC
	 NugC7v/P4zt/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB6DC36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174364679361.740.671321453056938949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 170a26b659066675b19a69a33f4f0309a8c4d00e50f66af6b341f417f4dc03d1
Date: Thu, 03 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743646793
