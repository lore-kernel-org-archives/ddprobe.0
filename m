Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058D310E3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADACCC433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673774487;
	bh=YfeFGqXfcYnUF6f8cAd7GADQ1IoKFI+JR3bqvNYQ2bs=;
	h=To:Subject:From:Date:From;
	b=U1f+6WYDmqNati8A4mjYi9UUCyzNIh3MRrYcMiUAXPJ6Eb+R0gCiD0K3cnAWU7vzi
	 7lCws6MLHJdsI8mUUbjaqhIHb1nQHQE5sdMeHc3IYwp1I3oVFcfo2aWc9YUjW7AzdG
	 1mlSKiXuDcdPFqcc57Si4jjgjJpCRbTgH5lZeDS6dpyRynFTvfrOM8CEAPhmj+9upC
	 b33TJ9wmUrrp3A+D/KwhPvxztfB80A0hkvOgtB9QSJWJKCqRkrt2afkq2G5MEKoIfg
	 fSID4RpBeVr72Cc+XvgPxo/6oDaBUA21ljQUCdiU8cg3vNcodC9KI4rCvMssRESLDV
	 UseS9Vtdsqa5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ABAC3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167377448757.1215.5319471751566731397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d10f3c5e6ea3f0f88a99ef7fb18036596a0211cc32f9fe3bc7fa66c6ffdec7
Date: Sun, 15 Jan 2023 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673774487
