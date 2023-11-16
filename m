Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3FA3BB56
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kP4WOjkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AF2BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700153896;
	bh=N/0lcZiuKqg+wjFXI4C0dx2/2126T54j9yTyv5EIuDw=;
	h=To:Subject:From:Date:From;
	b=kP4WOjkJpcJsWPnTK+F40ptPkBNei73z66NV2jy4oef/iBEmWC9YEC7nuimwlxJW0
	 KA/DQsA/gbwe8Pl7I1SrQxDWB22RqUPbDK1HAFwrqEoq8z3f71duffO+gMwqW46NYr
	 NA2y9P9AQDqgq/Lo1mURA60dX6b9LWN5aC5yDun9bnutvwN5DgiFaIJeWCj8yvC59o
	 yRcZZripMsvOIrbOumxUvn6xsImzjigMdup1Z4wBsZN6BCOy1UARBAPlZDOsImqLDA
	 CbsZYjQlxEfd9/my7+MjthYO8y6Jg8VXkNBi1pbrZkJkyOTlcFGgvnUFGMhZ0191as
	 mF58KYPmqGuFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D443C47071
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170015389650.27342.4401788807668540324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 783a25aa1ab09230a9270665c22d8e47193e1fa5a56169ffbe7efe4bc4850f44
Date: Thu, 16 Nov 2023 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700153896
