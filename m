Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB6BDF60
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 13:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA58C433C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 13:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692193988;
	bh=9bHDXXeJ3xXJjhBgSxAxhb4ByR4AMGHAZqoplLxO2JA=;
	h=To:Subject:From:Date:From;
	b=rXzMYyLzdPA75r3YukQhXH9AYBpt9qP79TNHGqpvMU8oQcfufFLNPzvf4PS+aglWY
	 hJOYTx9WhLthtr2YiHsF53SwQ4oXyYbKMzpmwZ6ofzwyIunUM73QWNwRXTfZQZODDC
	 TyoqhHVI5/+lbv6gtJdlvDrixxAkKpH9ebA82BFnHyR+XBqAxttX6PzPrzc93EB+Cu
	 eqR1ABMOC2fAZ8jMNs2UVKgLd+L/8OupNJZs7Y5pnDSDXprEHkF8h5ZHBy9rufb104
	 u7JDCjfmxTdwtdEWKNpChBIevi7M8Ug+4qrBbPKMXIeg8v8AcqtOIUyMM4yeL3MKv/
	 8pZu+OV5uXATA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7174C001B0
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 13:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169219398867.26063.5542077745162482090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5033dfb723d5557dd68dd4ac7c2f82a8fa0fef609c5b0bff3132b5712d99ff40
Date: Wed, 16 Aug 2023 13:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692193988
