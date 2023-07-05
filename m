Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1522C80
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 16:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34E8C433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 16:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688575028;
	bh=9vYSs5Z953XujSYSFlUg0fy2YmCX0DcvTkrGqFv/0oc=;
	h=To:Subject:From:Date:From;
	b=tJn8dcS/K+C5zz8EJG6YqLdQbJH5Wx0fzvZ8/Fz5fiLFj8xW8AgsLJJ/TBjzbY2tw
	 YsdBmt6fKqiuWq8D7zSdO+gmV4h/u9dugDKWfX2snYhQHVW2L4t+H/0Yh4Yv7uLsAM
	 jxLxmpOJYPHs/MOm8XiUS4PjTC6mV/bNZXCm7u1ABR/4NfSIv+HJEh84hXw5xB1AOx
	 VfE7VEb+qTUmv3fIwIhLMTwSMQCwp83v1EidllpIshSkrFxZ2lqOoiFyBlN8RombmA
	 VWYA5nTJrXxTKBy7p6YiFsA7vGpUwu+aDaUDCJ9dNJs/ZCSz+JRPbPOQ3qsYCyWVn9
	 Bd/blhw7MpfxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7505EB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 16:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168857502867.9718.12139976692193848275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d7638f14404a313bb72a34d5ebbc0e6fd56c005a03118fdf3ef8d0cfd11f59
Date: Wed, 05 Jul 2023 16:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688575028
