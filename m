Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631F42AB55
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 08:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6826C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 08:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687334588;
	bh=f/ghrweNTeINubjW+mbCkU2zL5Pe1LqtL7tMSw6WJjk=;
	h=To:Subject:From:Date:From;
	b=c1Q/wFiNO1WrUu7PpuqgMfEcwgMiARV2ehF2ZrqFfZRr4XfKnMjRNrs/jHsrfQQpj
	 8U0qVf+oo4hP7sQCZQPy2zGGbYCA3y4ifdICATpIEo8WNZGvlVrLj02GFbq4/CQ6z/
	 ICHwBMK+PD3r4eKuOGqfjnwRUBpGLnn/h94rEwJsB0fURb62IVeFWsTFmlKH2G7xh8
	 Ynaaa79XYryQ/W4Ry1BucabcULipU6q4ESw/fzrMrm5X8K3GOPIExQT3r8zCY//SDj
	 GRErOisYw0aMPabPJB/aL3eVTpm5c+NnLrXzZyGAp3jIkaPu4vtLjoIXqpeSIh7jaa
	 5H9D/17qjRfdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD780EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 08:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168733458869.32579.2935429810959694795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b74a9cee8cce4a3f7adb1771184864a72fe9f8fb6cb5ef463e94d29b81e96e
Date: Wed, 21 Jun 2023 08:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687334588
