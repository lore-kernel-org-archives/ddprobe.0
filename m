Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2F51E504
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 22:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7533C433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 22:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689892328;
	bh=+3gGrbtJDAVkKNUDxfHtgKiBbDscqi8N0cN8d1Q3tVc=;
	h=To:Subject:From:Date:From;
	b=Pd6w7Xe5aqzmwsg3+ovhMdU4CQAanr2qjI2eYYG8xiciFTmf0UM8Xx+naMyAizu+r
	 b3hkt6Ev20u0UiofppFZY3w0Z94f4Q9fGq6ayg8v9v1dy+ybIJVPgVCNf0KdL0j4AP
	 aQ07HVfqdgCxeHc3vswJO7UAavque9X6u+gDu6sMCS71uqfM0yLiiQf+0rKOS49tf6
	 wTOtjvySWK710XW6MA47hxM4OYOB/jlPE3O/cjU5RORhsdqE5tNbvrl9gvW9ZFDd25
	 D9M3LDvOa9VMkRjysNH0rBCDOh8dAcbQnL2UEsjJTyDRrKI2735tROWTNpS610mGXv
	 luMeQnZnbnSNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA87EEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 22:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168989232875.23502.17920960716007794161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f104060060ad1caf30c691df9c6b1748db132d101df3b976a8516deb23d9cb6
Date: Thu, 20 Jul 2023 22:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689892328
