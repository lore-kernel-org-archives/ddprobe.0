Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90392564
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BF3FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672480287;
	bh=Llmlv2YhC5JfNvetYLT0rlkr6qAMD0tne1WN5jx4VOk=;
	h=To:Subject:From:Date:From;
	b=Z4O19/DBvTYDbvMuyv3yrynP1Ijms0HVx/ReYc5KlwDd2nxb2IM7A4J5xzzcrI5Se
	 Xpd1Lj+LODeO/+M9sTz7dyKYKCi+Ydipnvozehn03cRxw50FzL5HmiGXBjIThpCA3o
	 MjaEbQUD1ctd0qpjb9rXOXZbFWalb0dAJml8rV0F8LpYmNsUN9hIqnc6sJ1qNat7lb
	 TfMoO2V8uma1TOBhcgnA0mUmZMwKYrqu7fVx0sPljA96GrVDksC9ZZbWB3wI+qoZJD
	 u+adqKlLT/pvK5PwLTnqFnKrMsCnBhJ9vEtTQ5Pz7nh8+Rdurwo6sTZzYNqlyHBQSz
	 LFEn+dE1jUwZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E5B8C3DA7D
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167248028743.6182.6280836073204124697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90e4cddb9338de98e2010ac1f43ed5b314814dcf1ab9ce5a36bdd9a18abb3e49
Date: Sat, 31 Dec 2022 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672480287
