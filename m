Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 828C4646
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 00:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAFD2C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 00:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688084589;
	bh=4KbX2AHL1mqG4DUpDJIPYPZgR/rYH0M2npeZGhHhvcM=;
	h=To:Subject:From:Date:From;
	b=ZAUoBzEhD7pT9b1uPDYN8GYuRSQZYRWsxQnRYEI9MUHG3UobmM/RK5EpHrcj8AKk1
	 tvbO3vwWRuIb4Lw0kxHH9knSgu7GlRQUy6BT3pO5M54t+EueSGD0OQDkbnUMbkidVf
	 AMabi10Sqk6iV0XNqYgWvFTYn/9a5yOqNRNfHb0EIbT2C21X2M+F3bwhA+sIR6lyzY
	 n/3cPs2FUXEJRNSIX2OhfQ1FpQy3WtVNn83u6Rw3OMPWXXjwY3tmpVTrfaeQ4xjC1h
	 e23VrP8JphXS77q5RdRYNWg+wWLrROEETtloUg3mmWvYxSZ6qpQwReFYm00mBSjRoA
	 ICFtaYOgVsT0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D181EEB64D9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 00:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168808458884.20575.7337366904774273077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5625ba6f3a86cf19e71e533d74ac215ff7b44d97d060143fcbaa0d11e0b5125f
Date: Fri, 30 Jun 2023 00:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688084588
