Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1440A62B
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72649C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668915054;
	bh=Mi/ZpGEqdOg/E4rBGcY4ySixRVQCgXPIxk5eC21sBYk=;
	h=To:Subject:From:Date:From;
	b=LYjtU3rk5DOm/iV2VtHHN/ehZG/9fl8MSyHSVkWROjfaBp6x8j6HXkKN8SSWVYprc
	 G0uxu4zQYe3lZE5KLm2qS0GF4YOwkAD9dN7k3xdBL9Y7NrIFiYzMdSI50gtHikrP31
	 vHnsA0/bqR3LOsM34Dw+dZVOYadT0qC9CJwQyRJtAEC2+L5uppfFEvCIbcaRH97NaM
	 313mXt6AT1lWmQLCLsx0hviht6s9GOIYLUN49FIauJAvoVAtmTcekblliZZWXvVGK/
	 nvqkGLjL2yzwiCMrVi5oeYyl7g/rIyt9slLlyu2K3jZDgUAgNddj4QYUkxyqk4p24Q
	 Xi9mzfNE3vlgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549DFC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166891505432.30101.16286267069654374158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b6543acacb2d43ac732e27674289888344c09896f5957fcd830ec8dbc6af7a
Date: Sun, 20 Nov 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668915054
