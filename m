Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395F340960C
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782901114; cv=none; b=HBJyzz1e8UjUOETlspCjVPJ7JTpOPQrat9jE76wP3YCCbs2aNKRMFaIfLkbNguVbhdTqfmzR2VQi9JIYTw3tED7TwCdZS0PW/slOfwopJegzDUBrsg9TcNySFk42gqicvxuQQXVWKIFu4WOBqn5drmIKcgtkz8zEI2YRNFE1xuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782901114; c=relaxed/simple;
	bh=25BaA1ZOGLJdvEqQPE9kreF96N/oL150lzeY+0hLvws=;
	h=To:Subject:From:Message-Id:Date; b=H4Tcyf7oF7tzuFd9hMnBNbpMhz3fNWexRi7CexRV/c/Q0yhYEBbSh17h600EI3n9Jq972lDJctzfFL5veR7NtFAWQZrBZOmjebyIQtgMuAvJDMh5bjYJvnZPHC1jDRw8FgSF6DpS85nWxetq2LHg2G9zjTiQ166bJ5LkW9QJGqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttCDvTK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttCDvTK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9ECCC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782901113;
	bh=25BaA1ZOGLJdvEqQPE9kreF96N/oL150lzeY+0hLvws=;
	h=To:Subject:From:Date:From;
	b=ttCDvTK3EV9yxRXcNeduEHmKV1OT/9Ta8npGU7gqGT5gAdZyzkwih7s0dl9ndEYJY
	 SfyRh05U3tLm2B2mvLwys5YimJGg/IHtQaEK0oiYrJO1KNjcj35TEi9UJ/bPunb+UB
	 OfOaIL5pFCMi57O0z4sKgSXA6OxYKCZzcPvjMhWtOmAwC7rLyz9OaTAWs/UwdDmXdJ
	 u/vP7KXAq7q7QkeoECZ0DbQ7DafJVqwSvYA5Wtkjc3ejKBBj4rjBsqEFn6a0htyr7f
	 x7kJvKbm3TmgOTuZnQ5CuM+ezPuO2gjBrroGh/jbhh5QXx7dV7FKAvkemjX+O5Ifku
	 hSlK5OteRdDfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9953C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178290111368.1921.10882597675755682928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbbb851cec0b9ad586854441437afe6f56b6a32881987d300e6108a25ad2415a
Date: Wed, 01 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782901113
