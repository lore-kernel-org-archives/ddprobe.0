Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DB517EE
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 829DCC433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671773487;
	bh=ROItXKMx3M05y8jOVE+dpvKvrEeAH3Zh3DYiyGTbelU=;
	h=To:Subject:From:Date:From;
	b=CuzYX6Iq/5W/8OyguSjM2w6fuhSFYqFZnQHExgo9E0oSdX59vT59v6OUzL8Qnn6er
	 rGAawREWeVuyhIFdGYGExblIhNT4k0p9+Okm5r27FhuAy7ErwC2ymM1OjhuQh+n3cj
	 cT/LFkNm/Vq5cq6+ggPThn8PpZzXF79hJYDUY+/ctACPfdDkNljKEP2gFoCyJj965g
	 xE+/glFapbvNTIOkofe/swMbljqdZ/myZ8ib29l9EpaaKQgHSrw76Qhz9kzhHqi90P
	 LqCnVjYghxi/LAFHpUTvrU17UmvWsvt3rQ/tkelXfsINZ10G9W1WkhRcVr6VDTgJLj
	 P6UXr0dqOOw6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 671ACC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167177348741.29433.2739542887368448258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 756bc71255c052efdb030bcb773e53b3aa01e392612068707d757f240bfed31b
Date: Fri, 23 Dec 2022 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671773487
