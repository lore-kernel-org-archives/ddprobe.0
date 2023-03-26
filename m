Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48844372
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 00:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5239C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 00:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679791325;
	bh=mlL2iWpSyeA5rg65CO+HbJH+sgj0dZL2B7pAVotENfo=;
	h=To:Subject:From:Date:From;
	b=W1yV46z9wQyYBVIj+FGxiT/Y3ipetHnwAh/f+d8FXwoJMo9Yl/Ro1qz04+jmSjK76
	 AXMeGYw57vLMNiJnGOLujER8bMEJgxDDIH6RnNfmalWDNO8QpmrmRe0+64lhn9F/M+
	 av7fIxbRXL2UhpF1gwp+2rWwhO/hXAluuVaKuDpM6NCkrYky7c3oYNsqHPLkN1wmWP
	 G2W3XJ+o8PQljBuFpxmjmO1ztP4wbEyV1m9vR3VTC3Jn6yraVqwSjREQJk2w9qHo16
	 u4zMhc40YXWxavf5Km+vvZh5xXvBLDfvBrVWbQJrok2IPok8n5ZaOM/HOhgRLGodep
	 +7zmymXQ5ViqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3137C6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 00:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167979132576.12003.6533770601641311803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf70e4625773cbb7773711a78299b7ed49545d1a3c0c46bc37fa6af30be82369
Date: Sun, 26 Mar 2023 00:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679791325
