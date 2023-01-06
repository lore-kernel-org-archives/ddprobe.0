Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25701863
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A58C433F0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673041287;
	bh=xJI2VscGYIL9hFYrJdIX5QrPJlN7ol5jHkC7bucIi6E=;
	h=To:Subject:From:Date:From;
	b=dTxOYF7NZtsey9BtZCWHf+iGJ+WNXh+PjZr7ZyYDQcYShJJ6HyFE55poKQhrHtb/7
	 uMgQsVrHvSQg1I6edYx/PUVCPJ7n3iSZ/EcmKh/9kCLydd+4X5gJsNA2AaklQQlNZa
	 gj1gIukx/OWBJQvprmPXhEN6qo8gboVz08x25/qS7h2HsebAvTh/un92fzB1BhHW2c
	 tbkotmaFUwnqRQGa+r9s+qJw6X9WoxgL8nH9Kfz3sWr71HX+mlDA9O6cM0CryRIgnI
	 g43xGSXTzRoHy/q8mM0UMx7xLxde1Ov2QKuMckvYtxoR29pJ6cdovOwth9gn6cOV5J
	 RWtb39zh9HeqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E64DC63797
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167304128737.21514.7069693068307666640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df03d3c36c0c5750199a0c60166975ccae11f76fc34a4dfa3a6a858a541634e
Date: Fri, 06 Jan 2023 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673041287
