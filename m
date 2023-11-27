Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE67513AEA
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uovzco7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 779B7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701079696;
	bh=RrXpayPJAcSGzfcDak3/4sWSxKLtT+wJdlIisBGrAu0=;
	h=To:Subject:From:Date:From;
	b=uovzco7XjJl2ehfnZxhpL0TduuuSF9a7ANZ6aFeJSehVTeBVo4Bju1DwmRrcMmA9/
	 MJ94XvYMsPWakbMOSUX+6jJY4S0Sy7KeKv7Rb7Ba1BVSIh3fsmSzsTP5CmtBK9Voo5
	 uvvH3Fdlwufug23maV+lpYjKWh6xixSsyFZ+wwjT5NpVz6/usy3YWpmc5dF4wkHxkx
	 U96idMPEJO1JjblzboYLLXLhAWrF7Zj2UTAIyukUrjxTnZEomvPQCeR0xuGvOJVB4i
	 o1fOjTL7u8BnrIu5q2qkXUUy87XAkDyP7vNw8JCHot8upQl2dv8492yn6AgBaeoDPe
	 78WwRokEN1z3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C5DAC4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170107969637.6202.3667470795386628367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7a056e0a20e7cf5973870518798487f8bcc170265027a5d47e2325535a2721
Date: Mon, 27 Nov 2023 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701079696
