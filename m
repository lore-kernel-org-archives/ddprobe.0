Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60DD2C80
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 735D7C433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666464653;
	bh=jXvzi1Gfr+pBb7pvYtnOjExzaVUuC8ySBzefy8Ybuc4=;
	h=To:Subject:From:Date:From;
	b=iW6J4GuE2oqZuI5w9BhOGF2sJTLAaGLpcjO5r0a5eA6VVw7XgvgUP+hzn5nV8dyqJ
	 KB1B+Oq/iGhFKphYXCvfjjznxHJF/qUpI4xtAfmTbweduUE+ct22HCt9a5jQTHimaX
	 iY7rFcTSi0jYXbE0PciJrHNGbBmSDgc9w9y+zz38L8vYM32h3UvVqFldY9U4IDSKV4
	 t/BLoZkTqoQmiBE4BVFH69yGOjKbTBoHccfBCiGFFOuK3TbibIpZSO+VQa0TYP3npa
	 caYo5QZ6xgchmAPKXUaxFsQt2qMcmAQu8tRf0aIBkjY4rJ5zDsu3Tucg/VSaGR4K5M
	 pe/vCcvJ2QxGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54086C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166646465332.30572.4485601535661362782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbd58936aadca15e7239448ec914bcd03d1d3a3461c919c52717f4302dc3dcc8
Date: Sat, 22 Oct 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666464653
