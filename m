Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A621D12F6
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724236554; cv=none; b=YuYpQsSsLRMohHFdUiaMSae16PILupA4lgAEA6OwHCwXcCYD6ibQh2ClvF57zjPcjQtXO6u3IGcKpbONw1lIJQZ+MgtKAR4lJAePpM5eFVWQp5VVRCdAT2DJ+Txmu7Mno/jczOKuEu4QqQDiDEqbsrVsZUaUBtnmk/2DmCKzaGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724236554; c=relaxed/simple;
	bh=7o/w0f7zoACQNhZCu3tVtUppw3H0CD3EwNUW4QRgFj0=;
	h=To:Subject:From:Message-Id:Date; b=SBrJwS5zmspCbdkje+KwIOmcLPjcBPVmtD4bDl3OO/KyhPNHsW5bwnIyr5s/LNmTy1rt6oxn3ocZ74MxvCCBhgd9S/iBDKwq1hJNK5J+ir6NItXavvaVpLfsnkd0V0md4AQCUHr0hkbDoC9uOxZwXg8dT5YgBElgfcjTDgWWGTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntn8eAw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntn8eAw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8F4C32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724236553;
	bh=7o/w0f7zoACQNhZCu3tVtUppw3H0CD3EwNUW4QRgFj0=;
	h=To:Subject:From:Date:From;
	b=ntn8eAw3JQlo9xijwKobsz5ZXU9hLds4VbJocHj9uzO/ahUO9+PeDArr3pM/viexy
	 agWwOc6qZZaSsYGn63Eq0hvY5DLrX/LdA8SZJh1b8QD5DeQVx5XxLyb4REDmFJNOaa
	 lSEJHC9m1tyVbQ14mzuolXEvUVMz5u5J3CRiuRw4eFG0bRBZd9vi5cUvi2ojnTVjlO
	 ICL282bla0+m8xKO08zmWGH8RTlEe1ZQvzeq0gMqvfhCk4p1pnA8jU/kE2WLPp7p4f
	 MBsVEe+uZnAvyqX/79Pk8AEaYMdhvT5lW+QYIalGkJcZ8gS7cGOoqZTUoXR1b5Eggg
	 b85CNCoxA7+mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A687EC52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172423655366.12930.13578328404892706593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b90160af44b16e737250c3dfab7e96d757203cc311857419db7fa56f92e98eab
Date: Wed, 21 Aug 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724236553
