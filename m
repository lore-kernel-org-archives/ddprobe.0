Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E170A381A4
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709177897; cv=none; b=sEvdLtbcxKYb1WX7jy5ap8QGLZgWBRHongXZeDGJf9PqMR0NjL3GX49EvLvbuqDPTnOOhEtVX1ESFxpm0LhN75UA29ttuUqPwRqC0AhdZyYU29Zo1VnO2ERQPqEXJ7sfGhJujYi7ZTJk7MhLXor1vsF68CssXZD4QSDhZ07eQm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709177897; c=relaxed/simple;
	bh=taQWCU5bgA+7jhXxGUN5LytXQpS/ML4HwViXXAtNqb4=;
	h=To:Subject:From:Message-Id:Date; b=r19828aljmgWI/WtrE1JL7uitC0RaTth1wpOhmQFf7hhDvdJNxg09NgVbXOPPEcn1+QAUDEJRWw1+IeDcA+lUYForZz73Xxd8PJ+vF3x7U0cjvYDNjCcQCGVN4PFzzpQPsVN3JSKRnPUFyvXvdwGi0AMpBUwvj/Y3fuE5RQ8LeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9LrAv6U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9LrAv6U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81DD4C433F1
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709177896;
	bh=taQWCU5bgA+7jhXxGUN5LytXQpS/ML4HwViXXAtNqb4=;
	h=To:Subject:From:Date:From;
	b=W9LrAv6UJ1lUE3Aw7UHre30+kO2ISG5dmLSk0rjNPfZHDwSUTWJsl8yvSQaUW70KW
	 5UdFvRG1QD5W3t6ijpXH0lHjMnQFj0vzlaL9lKz+5TMdvbPQLQmUjQdGHHw1WMMbDi
	 /TQrkzWB9+D6oACbzNm973cqxufB/DOLDcZOPYO5lYj5YM5/TWBMbCGWtXuEhXdTNX
	 cRzdFKCVgmoCUj1Qoged8qNwqQEVpRSq3QtqNRPnSdQCZbyt8pBarqjUVFcHH/yHvP
	 8CgAgNPCcQ/obHDqjjZMgOPVVzQNVrzNE7fLw9qZWNUJV1ZLjMNP/GVXba0b61zcfT
	 hhxNNzn+RsYNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B09C5478C
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170917789641.31194.15209924565746476425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 814688702f611834490ec3dfc9aa1fc103643b8524ee85a5f7dd83a6af0e376a
Date: Thu, 29 Feb 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709177896
