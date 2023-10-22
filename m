Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19324D533
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gp1HMc/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82336C433C8
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698017896;
	bh=liebz5HNNkj1xEa0oUOBLzrgmnN/7R6pscv8IfY37CI=;
	h=To:Subject:From:Date:From;
	b=Gp1HMc/GWmq1S1GptAwf72D9FAWlzMk5U3iIC1dPBPS3ypocNl6lmRFe3dJRc/jGy
	 z35JB26c4rN/4e8X3B1KmdhZvKCFcw/WTLdhQgIVbldvbCMCQamYISevs8hMUgd1D/
	 30J6o8nrYgZN+12p0Dn5HSLqV3dXqLCYrVJpSdkywnKKgeRlRnng4ZCSh/d2NAte8+
	 M6hiHK9r/i1m5c3HwzjAjVuz5TM+6JRyAqfck+pUxYo9WuTP+WVkKYc4kBu0L7fPP/
	 E0GsTRfbwQPrUmu9icDFN1Iq5zcpqn7H1XzvzhhqH9CTSFeXVnEqjfHbfUFSglVfaW
	 SyszcSCdFV02g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F15CDB474
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169801789640.530.14597235581348291594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d873881deb781b275dff83a9320ccc328e967c556ab45a66d413cef4e4ea2a31
Date: Sun, 22 Oct 2023 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698017896
