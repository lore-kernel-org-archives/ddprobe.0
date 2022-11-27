Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E656519B
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E1DCC433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669542054;
	bh=7S95BcxJySOx2ZGEUF63ONTB7CIPMhVKIOajsx8ZXL8=;
	h=To:Subject:From:Date:From;
	b=SZ4Wjs5XhAmsfWgr1FPfz9L3UUDRlWAfMWWzv+txyrPmeqp1kWxGKXy+N+k8MGCK3
	 qlASew7kZRHbO7wj47ZKyaEMzalDo5pTGaJr/DILYn0Miznaknksemb/+kwtZwHsfK
	 8G2B/q1LlXJoZSxh1DMv/cur91G96c/WhwFFc7VoJrnDZ3iH8qm3NaTDRpNKiG1ro3
	 v1yyAOTmsQBfhJPS8OAFY0JIvWfvF+EjDhpid1eN28pDlwJ5iQQw5kcDohvBuapLCu
	 79fqYX2NO6YbJ6ZZ4HVQiC+6GwN9EV9azoDcd0rm9puYrAga1WjK2G+hMclbo3jW0R
	 ukz/rBEvNoWdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C9ABC4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166954205434.10364.18310219633402464464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7bf7be715bab9c761de6599c8cbcc8e1b2fd1b934d48584468af47f38622261
Date: Sun, 27 Nov 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669542054
