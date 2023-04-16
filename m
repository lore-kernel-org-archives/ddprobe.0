Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5417610FB
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 07:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8995C433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 07:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681629305;
	bh=DSk5t9WjW/iOKriRKOzYp1ebKN6+KsFUd5IbIHAboUY=;
	h=To:Subject:From:Date:From;
	b=NMLCrSh30UsfD7QwL9Ve3F6OPSkg5ta5GKanJEyqPMKcL+nBT8JjGi7t3jZSUXUat
	 hoYoGYjgl+P9Gvi9PaM1e2cYc0wsr/ucxCg1RgT7TYk2vcAz/E3PR2DaKlz1L8xKDa
	 aZq/Ppj7FLQy6eWvBTCRXAYXZ6ieNAl8KEbjaXnmRHstZ7cXmXQQza+8YOtS0G2CnV
	 LuIJtcoBH/XDXCfJzla8HVLj/HdUwLtjQPzn/9uY+ku6l1ZKTP63P9toqeeH0qO0TY
	 JJImoDLXlOXvB7NSeRQsmsjzpxRiY/LmwhWcbPYoOVI+qFPderO1lsgC5tJE2cHa+2
	 t/yV+nq5/tmbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF2EAC77B72
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 07:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168162930584.27422.2176488820886748890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ba0ad3b65ac59e3566731d4ff649095f78c2a694c8f24f4a8d5946bd4ea5f5
Date: Sun, 16 Apr 2023 07:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681629305
