Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18647D52C
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAFdabAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA89C433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702537696;
	bh=R7gTR5XJrEt2CF0qEu882DmqiIc20nJdZOfIuj5z1dI=;
	h=To:Subject:From:Date:From;
	b=cAFdabAOiuxS2LbRhmyvvkJfd6azosjj/5qWafzgRifIpiBB0EKn15x3JmTVssl72
	 9aMt1HzwjcW/C5oF4H/+3tFHSEmqnmGEunm57f/ApewrLx23nnPF1XSWtqAyQEx09k
	 9x+7XETmPsMJdRWTXC60SE6s7JFBxBxsiApqUnnMzRrKtLsAS3zsrh5FzuiyGJ75+c
	 FlZsFnCvs64otZovcBVckGhAU/E2rzR0uqGC0ZW4qEqLF2lnWiJOMawq6V48iO1f7X
	 JywQrTzeLXUdjq8Ede5SMp7IC9trM0sjLGlhduCReIi4vVbFRBUI5wSR7UqYvHU8d7
	 2SzjxLnH3s54Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62DBDC4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170253769639.2115.5734561436356178638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47374baaccdc62277c45e9ddad0a712cc49b720eb109778a60de0ff502f43de0
Date: Thu, 14 Dec 2023 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702537696
