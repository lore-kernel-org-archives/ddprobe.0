Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F16AD524
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 20:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1E5C433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 20:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677790565;
	bh=Wwdy6HgqtkQmvk/Ug8jI7dkiS7EJEmzIVAPGi5DAZh4=;
	h=To:Subject:From:Date:From;
	b=VqZmAI/2iBKK7Y0G3/b67Bf7VpDBhj1K/tkZ4ngTH12Oemp7RBKMEoSriSiA9mI3H
	 J8D+mAiD23BY5VPlK/s8ELbn3G8ID4WE6LKWKRQdUslb1fRyLk2QPsVZ8SR9gujbuu
	 u0tSBya5UGCWuLtfK63uhacQH7jlF4vprohPKSSWocmZRyToh9bRbNl3c3RROslwx0
	 vBa9rVfayeZ7ceTUEHQgluI2tBtzobFPlbB6PyMZ4qhAYSEfQotLGuUdMGdQ9Z7Ckd
	 cCOBjrxB8kmEWRVXzRI/S4F4c+lK0KCvqq+dR3Y6yuZb6eh/jYlMCe2AgF/uQASLbx
	 Jfr4nbrH9Yp0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81C7C678D4
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 20:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167779056574.2878.14015253555976044397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f057e4bb822d24a08cff08365b4a72fdb4fd80adcd9caa769a308e094ce430
Date: Thu, 02 Mar 2023 20:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677790565
