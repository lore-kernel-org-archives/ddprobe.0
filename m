Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C50ED1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79EA5C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668319854;
	bh=SOUTop/WEnvuoeq90vSU55Dbn4/GHO33NnXK5QWyYDk=;
	h=To:Subject:From:Date:From;
	b=RqDnL6W1F3nMWQyKvBmRqHoClMwVAGiw1BjXW82sl4yHna+7fL7yPWHQdOapvS67e
	 /tfyTj5hiRLJzVOLOF/eQvur2ngp+60Tk2zoJNY8/agTg3vFTO4wFZqQxRp4LKevzk
	 QPhHUdoM4UUJsGtrArep7+ajUxh2r5TVXrtIpjvn1fOQNRQLqK2KJGb/10Hp5QeJ4e
	 GzmKDGqmRAfTbAEPf2e3LKKcE2TZFq/9lqXqEx9CdhTJQnQ5VN8JywCFiPjeGA3kl+
	 n2TZqPsafD4Lyi8N6t+zvvFW8J4ahOMrXwIp0idn+6koL6xEAR9cSuxkAqzHzS8Ak8
	 wHYE1E9JEzsuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5326EC433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166831985433.28312.6517311897355598912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37813a94e5c506e61ccbf98ee4f457bb322f756ac0b8511874ad226c173bd415
Date: Sun, 13 Nov 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668319854
