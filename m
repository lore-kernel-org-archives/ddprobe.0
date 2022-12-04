Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD912560
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A0CCC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670149254;
	bh=2s7lIUq2V9aBmMNYtB41AyQbL+FRRbEuUDuYe9L6L/8=;
	h=To:Subject:From:Date:From;
	b=PKJP35NmQhmJPqJVo6BV/uOlQlbc2Dz5Q4X7zomrglMp/6lsf3Cdu9ZWKpdh8d1qS
	 mHSaNF0dV6+AVqDikTiLoezND9cXy4FyuXx2sc+DYMwzRLeoVB+wm8psHpbkLscOkC
	 YkZ6VW7hMV86sKxOyglvBvA2tbPwJ0ETYIUas2jWFLSXWxl33LinzE50cvVyAkcjUR
	 5CDEGewaRHWbTjk4Esb0+oCTNdOmQY0m7vEL0CmztCypmfzXCjhY8qan9Gv1zV+Ngs
	 MRbzaIEPQoD7eF3zAoVBtbAsxliLJAuXJInhq+umAQ3NozCBwpECTaVMZWk0ie3OWK
	 9BaSv80V6lmPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B574C4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167014925440.7396.7668771686428667678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc36326242e9a7fbe5d3515d48e9f1f1ca6c39374ddb4da2bf3efe003839c590
Date: Sun, 04 Dec 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670149254
