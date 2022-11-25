Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14D37E
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F694C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669347054;
	bh=hydZMfEUgeqk0yYb1g8gFhdESU6Lm8I7AvNv8XEI4M8=;
	h=To:Subject:From:Date:From;
	b=Zljwcw503Uuu7q60/C//hSv/1E18Nt3zQl5SDWMV7cEbTdOKC/1lm96DryvMnfjCr
	 Fr7zRyj216EyIrI6QASQHI6Sgfqfn2oqLkbXI2qa0hGtYPNpBNmuzfDb6UVe0dhPCj
	 kQ05eQU/LxgID+bbbYc2tc2kTpIb79eSg5MZN4VgzQcf05lGmOLnPYMA5Xf5fH2PXi
	 KOGn1y/cEcl2FZZcvjQwuznOhU3ORj0q76fiHwzCtuvZEpPHz4+QSPlJWc2h4MDSo+
	 UiyFpT8QZDIBHf0iUJ2rW46OyvZDE9RUk1qcQikbW92IsGXViCsf26gFYABf+z4qWC
	 9JWpyKmzQTWWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F94CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166934705431.466.6271714474624673398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 013751003a67c4aea58848bf63054c937375cc48904469e260f5c8901ada90e5
Date: Fri, 25 Nov 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669347054
