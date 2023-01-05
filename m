Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDBD510792
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80B11C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672952487;
	bh=n4D5dKhYzey79FBE4U3USRnHUStYF0ESKjKwKt0cAu0=;
	h=To:Subject:From:Date:From;
	b=CMG8WjK6DqPumRwa6gYzmUoNFs9AlbGrzAvVOAuD6NPytnb9GMC7iS/OD59+2CBw9
	 TD8EohYn4LWqEct+ycAb6tFDdYVgtcwYFacStJm8V3I+etWD8qqB1Ut/L+RR1uPoDH
	 W+p7ySXupdlUiwqute/AstqV7JW/mLK2cek8+VNWJMWiTsQu8sNmzBgPxKa/99QZM3
	 z2F5lUls/vNuoumH3aJeUTQ6XgAS2FiKHs1peZoSh/oaXnzl9SFsK6sEismeuQu/D7
	 bdoLSSPJIwZ+2r23paa86Hvp65UusXrg116ZGkQKUGUist5PgNzrTb6UXZixgY4t3V
	 /mI2MlU5xB8AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AFB1C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167295248742.20901.3124574508887250417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61fd67d5ef5dc38eb4aa124f1b35a501de323523b61c9ef967516c9d69ff84dd
Date: Thu, 05 Jan 2023 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672952487
