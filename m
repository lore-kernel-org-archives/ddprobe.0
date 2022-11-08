Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCFBEA464
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A187C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667944854;
	bh=/37qdhOPKHNfgA1VVPAAjsyoySzob26oLwrYvwfUeKw=;
	h=To:Subject:From:Date:From;
	b=IKGYgZyxFsyHpHNL+ZrDQzETCgfE+8cuUsCTb0AhjVf4iPDEAY6gSnGTFxxo1OUAX
	 oGLhgBqyPJjnwdIWXqCBnCqg9PJJTgdqTz2w2TO1uaWv8PY7HTkHKLGw0/fAMaazq6
	 wfwJj4GQMnPjqgkA0f9B6CgC3fbn2VtDpIs+bS1mHSBLzeeWnnEB9toj7vmxVBkQmr
	 UJfLXU91sgFZEm2nuo3Ld+GZ6Ss5VT4bBbVrUyYTs+5Jilef9C1xo61+DbPhM5t90N
	 ARJMULJFY5Zgf4a4RrKrbZ1HqA0ZxWu8fmEfQLT0oX2SSzr27z7qCEvFRePfaRBGJk
	 Eq6y02HguI8QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C1CC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166794485433.17978.2037123165181194249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d2aeb90762e78873f3518946e827899598fa78599dfa0816d22891e1c59194
Date: Tue, 08 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667944854
