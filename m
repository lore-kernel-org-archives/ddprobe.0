Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4985F1B78F3
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786330834; cv=none; b=EwcLwHCUAd/Z6Y0lgA3R991v45/bYlGlnC9UZCThq9B3glnfSdcWqrO2H07NotIrpp3CHMeSPxb5nqhhUgSjvRKscVI1Ljlh413LbmGx6TVCwDzZ6ZcYFycrMXn7xhRcB3U9z+nk1zDtDKEkGLB7kCJrh3hE0Ct+KkH4vKUtRVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786330834; c=relaxed/simple;
	bh=hFhevpb+x5AwDohKmWVqtT7owgqFoUlG/LJ13cSLwdc=;
	h=To:Subject:From:Message-Id:Date; b=YxZl2X20mmakE6Z+aN3m4jIMZLkpqeccfRqOFjfyieOcohqa3Z9/CI1kTwG39t6yZlFd99yzUpOkFEMYgM/aWTjXJnWnHrgBJqDCHqOBaYEPFS/ilfD71M8tIa74tlBTzM2Gxio/gXWuBgBysn3fq97pWbCFXM1mN4Ut80ugKNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4oNkMVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4oNkMVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23E7C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786330833;
	bh=hFhevpb+x5AwDohKmWVqtT7owgqFoUlG/LJ13cSLwdc=;
	h=To:Subject:From:Date:From;
	b=e4oNkMVOd6xmdJG6ptbUWVlPfAQ11LW/Cq0FiYF0EZ3jMhZORB3BzpYYUh6GfVZCO
	 g5jx91ZKAxI2TUOOBVJkBPg3nzGJ8owy3M5fibAi+7zEA55kMTxMSTrbmTPUQ32SE/
	 8sizJM3mT5ROg1N+TUtfyCZu10qhmxxPHyHZQjHjBjEFXO2RBIO28L+NlQNIqFe9iB
	 lMDT1KvzE2rO3OQCYDXYTYuoYqebbbWMf7g6yipFIpdM27wolZh9HSwei0XFgJP1zB
	 qY4G1BQfuIKzpjz3Q5v578pcClAkjssyguIRKr47Wm7y8E4LnrmmSg4OHSMclPK83J
	 2v7Bypbxi10kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF35EC5AD5A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178633083370.24456.9280055195386791036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 469e23cc9ff3690caf9d9745579d07e419c36517f30cf29bdc931de75caf6592
Date: Mon, 10 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786330833
