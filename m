Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFDA028ED
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79681C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670852487;
	bh=vz2inedJUY80i5OCX9OpvZyIYMvzowsBDmDab54jsP0=;
	h=To:Subject:From:Date:From;
	b=Of+BQs/ELa3DzkQ3JdjVCggOCvwzgQVMwCIXPSnowWn57QRlNGoBYjkKRNoTFAegU
	 Yeyw7+NTunAl64wE4g2H/m2iCA5dVjiqZbsqZSy/5Q/0WN4uobP2UjDk4FEQEUBDU5
	 rMXoSpgcI9pB0rtEa18eIzrfzxxNTWv+WYp4MDxnOi6W4JbXnRbPzuQ6kcn9u/gTN5
	 Aa7scT19zYg+2TNONBcQ4xeKMns5t6bswxg/Ufhc2MTc0ZCzAtIE7646XsJlKZzVjA
	 LU4Oet6qpZa00XvgeEMwdXgf5/CIHb6F3inuOseJXU7SitTlTQP3XghbA1dfAeyexQ
	 iyMeKKhHvFd+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C58C4167B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167085248739.30642.2837156263950579840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9a108bf9958e69043378a5085197751505917727e5a57c6ab220f31e801714b
Date: Mon, 12 Dec 2022 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670852487
