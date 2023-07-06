Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0E87F
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 01:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9A7C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 01:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688606228;
	bh=HKdOz9q/6SWzmJA9cpWK/EcOG61Yc0Uz6bDBbVzBfcE=;
	h=To:Subject:From:Date:From;
	b=X0eLxzHBCcZEvM3DpIlIABrbg2jg8uEEd0al2XPAAOFba0fMSkQG0jnFJrnQPsl6M
	 DQm0Ef/HzdbkrcgauBmyNtRQpNskXiDlkF+x2aKYCZOYVNUEubd00lXHdPPCQlOKJ3
	 dx+yy/x3MNVCQQ8sWQlSAQWfnJ3ZmbBsX2MogbtjelBJJRJ5nhQ5nXRC09+8pu6rIR
	 ENFQ06NnctUHyv3VpPmzNysKFzb4a70qzQGANBbQBwmNS9YRkgmm+36Au4QttN246v
	 WMIkfwvO/GuBZ3tAHvv0whHyutItUp6kWVdnAOnLO/tcswUqH1/Rhc+8rlrzcPqTtg
	 /LqqHdSzak0WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33C3EB64DA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 01:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168860622866.889.17993991538828293151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c0ec70f9fa71487a7c8bed9fdc250ceff06483c471bed383d04959341bc93b
Date: Thu, 06 Jul 2023 01:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688606228
