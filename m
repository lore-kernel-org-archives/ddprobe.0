Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC289370
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 700E9C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668920454;
	bh=KVNj7qZdfpKBYVYocOQzm08H6IsbdHTnF/q+uNm7jUI=;
	h=To:Subject:From:Date:From;
	b=nEm5vaD3xwzRUNOUUIUMz3qA2i4rapO2CIJYTDabXk9NlDHbjay+XGkrCvQtI6Y8w
	 +uNjeGCvlHl8SLOu97kLdzM+u4tJ1LQlVkG5j3siZ6oL78+Qnui28p20gZSO0+89kt
	 8h0k+fmPCQCUJ9toU2jNZt90+UXKfZOJcZTRF9nNVRA5ninfLfj6tNMBALOmaPHOGy
	 jh/6pbwSEdhfmhE+eKeyU4AuXCfS8rtqjHVk4BCGRyZAHvYJnP4t8vfXYtYuPHEY2m
	 WX874AQ//4eH6n8Ew9dPIlOySprrLhFO4r8ZOFa2DIaSZ81JO0zeCGHz7hpuUqjJJR
	 c1//HNZ1xy1Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A1EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166892045432.31684.11973307466208621643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd8cbf58be9bded652a674b5ed2b09ee58225831c603ba200fb607417a42a4e
Date: Sun, 20 Nov 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668920454
