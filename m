Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1EFD20F7
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A9B8C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671211287;
	bh=1nk7pJzguCmnG7HnALD9xocN1GeeVfRhwjX9TIuNn3M=;
	h=To:Subject:From:Date:From;
	b=DhcojxQQLppPPwz1FUbQGj20ZyLyYLu/ZwWmDxXhMiPEMT7/WKjVKkWsTacIUU8YR
	 RMI5zkHEOEkdC9FbfCnOMz0NHs15HD74EcgOopZC2VrE2Vvq1hsOhK3wakxaahJkBC
	 kfFAhxAuEIFkl+PPpdMXtPsprpF/I/kQjuNM6sLAlMP1caTchJvkl6AhDL3R9QAmtG
	 ol3x/9MGdh0k1+WNmQkVLm/brx3I9ccquqoBND4tvtBep8zxmwGGH0Q3N+eGDl7SRs
	 0/GKamFfYDfH1l6GUwm0DRbI+JppTTsEm3bPK3Ml/LnuxuF7w2UZJlhUefWeZS4Pk+
	 m516dl/VW7a2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60453C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167121128738.28419.10391363568418309202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4188810f0701d75770417d8a3be67f7c11d71db1d5e512ba198a2989ba946cf
Date: Fri, 16 Dec 2022 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671211287
