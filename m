Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66CF53B3FA
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 08:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DF4C433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 08:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686213185;
	bh=G4dvOUMgONNGXkw+pyASBBhrHpGe9auxAOprkeWEgEs=;
	h=To:Subject:From:Date:From;
	b=HVzqAuFcKP+O3xuUH0C2047Mhk767k8ajpxp7MuE7BcJUzT5VExWe2yIXhCmQWPAQ
	 cVMxl8HhxUXdUXD5ZKmoG7uhaz88eEyPYkg/2XrLHVh/b6915QTJQFFM18aG5JOXPi
	 J+MAJP4GFTdT0dlLlWN9z58ISP/81CqL7/PIPeIOJCg0NU76va7ljkqJ6hpYK/g2lZ
	 dwabBOlFnMq++AjKfgM5rcsJMUZgdvL4JwW5bm1IYns2cd4lo9hIzwTaVYoNCQR4wX
	 quN+PT5tM0c13q6tb3zFo4N4IzyBvB0fRYldocioJhVtl7HOeXRFZyOEbP0GmNFRLa
	 mCa/zXvNiEIig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96CCC7EE25
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 08:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168621318575.19741.6311205268978483092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9e2e814a88357fdf6560bbed5ab9c81ede75d568919680f38b18dc5d059204b
Date: Thu, 08 Jun 2023 08:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686213185
