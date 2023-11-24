Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17832C86B
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gefREvbW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B2B0C433C7
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700863696;
	bh=lln2YTsnJmWfSfDwk4amujiJTeWHdbQl7VttaGXxwQ4=;
	h=To:Subject:From:Date:From;
	b=gefREvbWZ/EWN2OUiRQB2DFuKg+xU7N7QyUWvBKhOX4wVMexnQoy0Oz3IFi2ADyaB
	 YhEuVp8m45dw/3E15fP2MvFqE12UgCZocCMUIGXxBImHBcoluwA6wOy8q2nGsRLYtQ
	 sQ9Z89pWqxztEQbHX4b8iVGiquJMUFgjc11yJJmfRb5FV+r3tjJzmIDhBowkgmOxe9
	 ik0UaRGYricBKCMKcydELjTDHBdU/X8HWHHeQl4WNxrMzGE2wbzg7FOyEkX/cCB7LC
	 sYGJmUPzdngjNCeMb0R9uGwuKx9Kp78sLDQzMcyeMjPUvGTg0O0KHuIpGj9ZO3VKs6
	 FnBSkHU16wzqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FEFC61D97
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170086369637.32536.14541386532121571391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc168fd7f14631b0618a7a149a9b034e86334e95c9139cf0776ac6ca568c29a
Date: Fri, 24 Nov 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700863696
