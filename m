Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B141374
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 00:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8964C433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 00:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674605585;
	bh=jGfqYIrlxZrX2TbRvwY12kIVNba/TrWE7nc7L1u8sK0=;
	h=To:Subject:From:Date:From;
	b=fmULZmI8dhRgq2XbcqHxRiO++e1wdoxLj8EYmmuuB9VWuXfGLKUHI66fGzqE/N8lx
	 QVOY/lDF7FfItxafX57gGPkGc2VYqohWBamFqwe5ikCihn5Py3DEcntoq3rfwFXjB0
	 ADfpVqjkgC1JnLWPzxTMoMjMY2dDGrNj1i6z7Il935KLCtgsj3fFdIZjRRigKEfvjM
	 y+6TMyLONTaKlt0d7w7jE2SVH5aHa7aceG7U3EdBT4SViAgvKghp/CTu4qW9x5U66H
	 JrNMckBSjgPGbRwlIVMwt5o6c+l7kbEU1jT7OKYEhY1pEZiQZl8vGPYDDagi1jWmUs
	 iTGSr43na3zOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD0A1C38142
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 00:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167460558580.3093.7639334891762516478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fee7bf5ba6a4e59c86d7675e4d667a5efc1639e0f9b9c995be6b29a7f1d2bdcb
Date: Wed, 25 Jan 2023 00:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674605585
