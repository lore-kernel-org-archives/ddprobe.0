Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B9B5A66
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D348C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664554253;
	bh=y454JiG+2Cs4xCWOZEUwZ3ladFWPmi+CN/5gqMnNJqE=;
	h=To:Subject:From:Date:From;
	b=ZPM0nu92ypok604DRO9Wnwy0Ix3smiTODI3iLvkF5/WKucSDhc4rRmxEbHSWlI9tw
	 3DpklCVn6+RxdMi3mgfF1dfHOAoJc/u9hGw323psTT9sdqxLS3CjqIyxe8+I0cQEvR
	 ILvhrUqlSIbPzyFt79EjI2v5BZxZEiPqtguexxpfxcLXbHFY/Z9EU4pjuW6pz+TNW7
	 KOSULgwLix2quNTTUbRstsFFsLGYkIXSdHmbwTZhJJ+tqhRNElc4ZNgddOatJWGYPb
	 s/2nusqHwJlmLYcYAArrN2vpo2gbqi3cnAOqC1IBcFfz1YNl3GNzvNo9TxyPjGNEQy
	 8E1tAtQYGlDrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5438CC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166455425333.15114.16375215082961523207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e0d7ddf082fb77435c0308011d955db9681a1ca082cbfd424ad7bf89f9eecc8
Date: Fri, 30 Sep 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664554253
