Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5836B7FA
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 01:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD95C433C8
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 01:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690162928;
	bh=MrBej9Ll7NLRz45E3E22mJsdxeAff66cSugNL6Uiflg=;
	h=To:Subject:From:Date:From;
	b=QmuthYlVZ76vZtLeJgQayiZniHf3t40EaXbyq1bx8cn9jSTGXvnPv0Lw1oYlyD12n
	 /C0J0sExrb5MjkhB7O581sZEnCu8j6xomQNZdvBVTV5VaezgMd5vcc0hY3kVJy6wvV
	 vuUMQosF7+OL5sGZTAGU2Bwtu7598d8AAmGsnK6dBP0Ciqf9NM1tafgv+tcTmceB7j
	 yNVxCGvSXgGlZX0GDEhD1J0mAqk8VUy/hCzkidy9Q/XD+b4b7ikcQp/Lg0Jc5lNM8S
	 K98hx2iDj0+TIfc3EzZVDSkVExcxdGfkvQPO2HGyqRHm2MtDlCsJRZs7fz9rCJU4hw
	 CLNGFK0u1X/Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1082C001DC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 01:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169016292871.4483.15203794985509519992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76d21b4d612e6a647b01d5d1ea09ed238b87aa2bd91cb2c741a3e46d40dad2e
Date: Mon, 24 Jul 2023 01:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690162928
