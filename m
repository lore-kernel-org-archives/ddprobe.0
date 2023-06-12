Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 808731F189
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 17:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB3E5C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 17:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686591306;
	bh=f7DarMD7RPTOwH4dg3pTwiqEHu7RGGbAveszUbnkc5Y=;
	h=To:Subject:From:Date:From;
	b=NV1dehpLfKR9bmJHjSxNi0s0zqy3RJ8I6KjFZ5YVhp/pGcEQ/kHpFEmidd3UXM3Rn
	 9hAA9zScvchsTV8L9OQfoAKymu8aITDTSU3QAZmBg0iCjdOHBroWsuT5JgI+zSlArV
	 KzAuATByrIbYk3NVXgdS1iLZa/N1DI3GTOaBgfAiDmeoL/2bknyr8CtaSagtqY6oW2
	 sOe2l7r6IZEuCi3PIttnhJ2bjWpxvgtEJ/4Qh6tEo8OyijmrBcIr2IhzUZ76/LcVHR
	 BsgwZRldMr7PTYA6DOgH68ELyLDYTgP2i3vHj34vRGLkm3BdMcU8Lk5dNHgWowyAnu
	 992T3eTKvERCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC183C88CB2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 17:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168659130582.6643.5586436824855479749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19c0c93a9d68815173bc8a9b9965efd7bef4eddf9c4c41342179f487112781bd
Date: Mon, 12 Jun 2023 17:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686591305
