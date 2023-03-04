Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560D923BC
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 12:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEB35C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 12:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677932826;
	bh=noO8TjB48A14OJhcXqmG1K9yMG5kC8MK1z9p89/GG/g=;
	h=To:Subject:From:Date:From;
	b=Q9Fx1Tt68i7bYud1yiDPon7Vhmfh6VEPFSK6ZC4babFpSocHS5LHsxYpNs68G5D1T
	 jkFVypFm7tSgEsg6zF8x3pfEejZYSCzBMxREMlY2V/m/i7N4NOgpE8m23YiZVlKGmF
	 yvPYTFfWGUdYhai6GjQLc7ZsgfHAyfrLtK1a0XqiaeBl/6OQ1HfYliUtmLHkgQSAKd
	 apf9TFJUru34SRLsj+vfv1YR7NvuNa+nHlmX3D7ZaVs36GdzIRfAiWFeyjq1Sw1oTD
	 Tym8F6bzHeUSK+//AXKbm/Jre0P1FRvrbsM+15ZXJito7nyOgJc23qZYvWqDIcOHec
	 0tpCak9cGJX1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D16BDC678DB
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 12:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167793282579.3999.10692367169194090529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db70471959f5ed9d838ca2c8770b5d88bf1341df14fc97ad00b1c8c4391e735b
Date: Sat, 04 Mar 2023 12:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677932825
