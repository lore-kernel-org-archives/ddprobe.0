Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC86E6FAE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C0AEC433C1
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667475654;
	bh=T3WcOOLRkCJy/OhdKuXX33Xf84ybv4cpSsApTyd4e8U=;
	h=To:Subject:From:Date:From;
	b=pQii6Tfp9RGn7jM4myIkCQMdsox+d6+/bXtXm3IR9jotFvcc4HoQOLQDgZWlnJhc0
	 CQkgH31t5hDPguNremFRJz5lyf2tGEIFxAR1SoR98KVc6JU88lVyrExmVKEyBUZZv+
	 Kkw5t3cSypIirwkXvRuvVUiD/bxXvsrhUknDNtSblbV1iuV8nv/X47+73E/ROhG2sC
	 DKcbaK5AmrqwcQFWSBOGpA/JvmEDQdRwjYwy/IZ79RilkbDnqAia2tbKrXO/eI/eoe
	 jVd6XAXPm2EJ9c8Bf5c1+8Bm57JVCLN5DYLyYG+1dGR+N6biuHlV5I3jpBh5Qm7Flp
	 b8ONNfKbXbO/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51EFBC4332F
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166747565432.18348.6094647882855259679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed74262ccbed2e54d8cb6c9f61ff070e4fca65e3287b3cc5412a006d70182d4
Date: Thu, 03 Nov 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667475654
