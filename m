Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB87C17E0
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7051DC433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665585053;
	bh=hE/y+Pbc2nNn55hvzYGkGoH3dQUAqwAohd4Qx2EzJ7I=;
	h=To:Subject:From:Date:From;
	b=Xhcacn812vbwdBx/JlIwPmAWln6RzPyMyvUEPpwRebhx0doAKPoon1FC5T+ewgG2R
	 qJ2zALiH2IuLOTfunrEhPYLWXTzXTY6TLsUXNmamWBGbWpVrqrO8iSD0wpZXSNrUVX
	 +0R54twzyxvQd0zH+ygXvaphzcXZpoGm70y1THTYwxOlQkHP9diZte7ixrJeuoUnhc
	 v1dJqEG1hoCAoOAZaJa9gjoaARkQcCS8MIXyYmVuTgjtp1sdmZ/eOW52g6PvxIF4Wa
	 YFYRz4Ae+BA2xEShrt47IMQcPgvpVX47afwcArot1nhdtthsiXKeULB+fNT26u+FQ3
	 mnq4gkMDZnbfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DE2C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166558505333.30659.6519579973509504354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e0f7be72879a77177d32bbd53c988d883272ac45e8581a33ad881b1a31d89a
Date: Wed, 12 Oct 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665585053
