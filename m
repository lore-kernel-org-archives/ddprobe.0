Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4191094A
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CloGyb7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89BFBC433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697789896;
	bh=f9zCn5MHvwq9AU8TDzhY2gp1VHXFeIzPsc7PeXH7ScM=;
	h=To:Subject:From:Date:From;
	b=CloGyb7d2uDUpTM8k7EbbvNPRi/bWRgncJXwxb0plMPa2nSHCE3vYpH2JbDLP+I5i
	 ksnDNfHbfbyjnTuJXGqJfTc9U9BdD5YQLqm+vvpSDxfMNwJKhCQ3iX9yWq36NeYm0L
	 YrK8Ch/njqmF4Z2HfmSmRPXW/Vq6PtzZrmaDyvmTBtvpkrffKoSa+JhJ38Dlo9WDsg
	 BJhgNmqncmSUMiVjpFX2ieU6ZDMMb9Pr8hdKjF0bzoqr0h2GOI0tjIMggS7ondWSMv
	 Qm37XyMfWVXfYPhKV8xPhljreLN3VNNyoAGRlHHucC0JY30CTmG3WSL80bMELIE2Qh
	 AVAzWClgRBaRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A2A7CDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169778989642.29622.6921191536071027355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5445c5c6a64270e2c0ae9d9f18e59f564a6fd9069c5535282dea1a296a4c89e0
Date: Fri, 20 Oct 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697789896
