Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055C710951
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8isfQvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BFD0C433C7
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700139496;
	bh=+bJx7vnY4NOGVYUn6a2NNCSDz1lqzbXc/mvMVrmKjAQ=;
	h=To:Subject:From:Date:From;
	b=X8isfQvh+V2RjMzKkhLPZMhHMlxDaRmgYUyHNaZZPww/ew0vgbPIOG8G+1LWadBM1
	 FnKru/OqwvjdmbucmBnok30kGkq21BmjcWhRZrvUkR0DyOm6wa2gjfc3F+uenvKts9
	 WslhVcOMyXmCDBoPEs84yYKqdHuyyNGzmzlNYLvo5NzF32LT8Tf3XiLv8xQOwnLZAP
	 Qr1jmzVAHbTQXaFVBpi0vEJjLllqV6qb6mIzg1CVGQ5p21cAvrU94Tm8ER1SKT+CH0
	 f/APHphsenFEHFPXflDDA4Lm7xzXM2TnQgD7QZYjqRlOKgbor/d8AzUFYxVCVZyXdQ
	 DAmd1wYdasATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C870C54FB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170013949643.23460.4134065252521772856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9758e3ac4fc869462f3eb82730800c45c87cc18912c16a25b87e0bfbfa18acd9
Date: Thu, 16 Nov 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700139496
