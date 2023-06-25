Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77369EA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 09:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D632CC433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 09:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687685588;
	bh=fj4OJ3q0jdUiLV7m7tiXwDZECORyQKbRK6GGjxAgxwo=;
	h=To:Subject:From:Date:From;
	b=aLqwKWzXtCs0YS0EYIJaHfxPjgE/JZCAq2Ll3fYxnWNhVscNYDcYguNY3gxmhFYkG
	 twIihXjy6Ce529IQwYMdD14xSjnKBDHcQ+SBGAHxjtILq8uYm5YKdLLZcS0mgyi6tN
	 JRQPnzbOr+i2ysS6uAQVJKJ0ebS4slz94kf2taan8YwO8eA+Dh0IwuW0M+bhGZkxBQ
	 BuYuZ0JULeEfR472KMawUFdT72d9k8UsumLcRIeRsrC1ypWXwKpNhO0/pfKKfMY21O
	 xKsz/cFFLB9kcM0sze2QJ+DpylHfG5PE6An6N3JWx2jNeH8Au8csdwF8RCvgPQrdi0
	 +IohbixbFHndw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3026EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 09:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168768558871.1508.7322552200236644179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ff19315378615e864833e7f5e2cd7ba52c1487e7135f152866def236ab850a
Date: Sun, 25 Jun 2023 09:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687685588
