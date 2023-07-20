Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BA414011
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 23:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEAAAC433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 23:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689894128;
	bh=3aT2HG/hXUNHklrckqtC5tQmVoVBb2bPT+IbRNtCfS4=;
	h=To:Subject:From:Date:From;
	b=L1J1qe5BFGfO9p65f4errjd4lUItGUjqRlXRd3Pun/mikK8RWs7+q2UnUsNj2kr+0
	 zPsXM91rOkOfoxGSnj8o57m2WJZQIZNoDcMhBx0tLV9Ng1UsC8uu5eRK2PPTRy+RGt
	 EMQNgJcKYHJRNgOeGResL5RyHzDLR+w5W08ZlSyeuS16hWta+l0v1IZYCR+0PZveRf
	 pmWmMC1/lXZEcqHM4M9gNpNJ2LnzxkKYNmCOcj3mpnnMqvPKOE2s2IDLXEbYjX7Pij
	 WPARiLn0ykuvJrEQov7gvm9cJ0oGo9DKuZz+L+fyq5vV+OFniqxCzazgKJR7s20t43
	 pXdN8pQqNK2yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA2AFEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 23:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168989412875.20700.15637354155819808210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7845f3c6a2acfafde908947c642c68464a9150b94c528998bb003bb0555e8717
Date: Thu, 20 Jul 2023 23:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689894128
