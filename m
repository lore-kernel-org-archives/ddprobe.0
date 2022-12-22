Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC26115A9
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C564C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671670887;
	bh=q+LtDygU+NEXBBaaqCwE+fDm6zXJPNEKkRlwLH4z3wk=;
	h=To:Subject:From:Date:From;
	b=rn5rh5qZuQuh5LITBHUWZYATFsiKY2G24b0f8meTRU3AKWFE++2Hg98EQAQLIdzfk
	 TiGHa5V9VpLYjQnK9e5wOmSrZi8GO/xKnuymL/b7TQiQgJTw3pmtsuvAUPJZ9egSoW
	 bpf9CcZyMcWOM0k9feiRvoFnAlG0a0Wj2WVNkfagCKq4x54BCKFy6i/7sgb+i2I5Va
	 x0el48ivEWYfSCglWxjyWrtdBo1ZFqKM0i45c+ffyigEfdZuyrmv0CvOSlw/YrdFeF
	 aLgu1fjwvjFRbkGNaS8ri77gUyG15myAsoL+RHViUJ0xUh0jrwXLzoHBUkshtoHDJi
	 rw2YM7ID9XwBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5C3C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167167088738.27495.12487805121333890559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76fc359fdff4b41895ed9808735d885ca823535e496fb0e1ae21e4aeee4b0cb5
Date: Thu, 22 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671670887
