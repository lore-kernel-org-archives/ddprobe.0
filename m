Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 822F215E8B
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 10:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3etRdIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E940DC433C8
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 10:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697624292;
	bh=vGGfNvzJFeo/GCzKtSXGBi9/2b0EfXtCEbLzS/6gt/I=;
	h=To:Subject:From:Date:From;
	b=Y3etRdIBAinsdXQnG7jd3vZyUZdM7RiNN7WlHW9WtuKlLKodDm2BQUoG8oHFPUh6j
	 Ji1ajcGwF5fayMADq5UoI5rX6o3KwSt4rbAOszlxVuo4tvC2POx6O82sCEH2ygn25J
	 f2jR+EaPGxsF5mB0nEK984tKDzc4gMP0CjlNgjyNsaKCYxIyo+s0XWx6928n1FBwpw
	 WQfXMy/L5NiztXpWH9iHb6rcUM46g6tVv1Dh1jDS9/9f9NfeUbWj+XD70gez5Pi8Lr
	 8f+ZqCbjK3O0Eeni8joHrN1HvKn+w9bckG+IIKzlHRjUb+YO66p5HFNAtUytcBSRNP
	 +LRxXPw9zdPpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7932CDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 10:18:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169762429281.30561.16452124435512984218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 883672c1a0b379f44b027bb787ce1baf39529c57d521b08aff8458636030538b
Date: Wed, 18 Oct 2023 10:18:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697624292
