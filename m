Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F9A18E
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 00:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49E3C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 00:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694565248;
	bh=7aylLaIK6+WGZUH84+lJtO0ACUxqZeguAiyUSofhTLQ=;
	h=To:Subject:From:Date:From;
	b=ZUCZMhMjah0UJppsI7Mq2hjMHRvxh8wYsjxiX5sCQRmtO5k/MtocV8Isgn/USho3z
	 T3btfOuMwixdqbndqlneUL4Arcct13Ce10omp6AF+fRd8AuUPPdBaTYGPSgMmYwI/p
	 FfoZZMGLkJ0WSvSlQNKjKYpUZmP+mtnszx2/L795179sUfFGjb3picZ11FvMeZcY6D
	 i52EG9ODaoyWsTyqVoVZI1u+XddFulB0sI3UPO/qnBJlXwR8Dh/QPIUBz0AAAQZk5X
	 mbHDfT5qnWPthKuM5egx6N2GDfEIauu5tsG2WGsTRQdyCY8LipozIyqY1qbxA9zLkc
	 bp+NRn+X6d+LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1E1EE3F39
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 00:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169456524870.22812.12689459220420714199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57de4580595fe01cd28a964914523c97d280bdf5477e45ffe40407f7ab6e09ed
Date: Wed, 13 Sep 2023 00:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694565248
