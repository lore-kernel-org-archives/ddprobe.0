Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EEB19904
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 21:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3468C433D2
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 21:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683666665;
	bh=Tl3jtsaY1vu4/nqwYKqE698iflE4J1ZK9OQcaTP1ooE=;
	h=To:Subject:From:Date:From;
	b=p8XjcY8/fcGbFeUpsQZR8o4d6dh3koecV7OQNYyLqdc+UM35IkBmLLcQYl/Jm3BSL
	 oNZJFd38gJF5bDocyjIiuY7gZPVxrzmDluBbBB3nqV58EK5urVZodYuNaUzMlXA8+j
	 KKI9osa/KmY0KsANOq3BFhhLzOGfgPdhDc+Nj1hBuPnl8+EqkWKy5f1FjdF0IqLDc6
	 dJs6myeI8Y/UCp19G2eyB34dBJiNzlRZEt9ckd+ieJWFUQZEAIvAynEcKCwIjs6dce
	 YaNsC09zfJD/YXBoUDKP1kIfayj4+F3qVsD0q1zCbGX4SD5Rx9fwNhM4ufgQu623tm
	 KkrH1+3KKgy0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E36C77B7C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 21:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168366666572.8808.13371557360237222154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b62896a6abd5a3abed48ec078c1d0657f43be4aa5e2427e4cf28e0008231c1
Date: Tue, 09 May 2023 21:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683666665
