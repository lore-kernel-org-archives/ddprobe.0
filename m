Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FE429AC
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 06:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11FFC433C9
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 06:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691995988;
	bh=Gt1CTiNBtY8J6v1yL8oU8n44azpYpyQZhvB0+2Jd7mk=;
	h=To:Subject:From:Date:From;
	b=AA4i/i6U0G7vD/vDQzgnVANrnrPdMQBSd0cSrvMxhq4ut9tcLgm3AJHOZQZz6otBl
	 mcRNeWaUOqKnZXO7gEGQ/JxmpMwuvNitcmqWvXJgBhQniOEw9A02Ia+6z8LzOXZuB0
	 dmHVSz/atgMBPE24wj40R86CYPQ+FDH34uUmq8+KHTLTCwThNq/Lcs1LNR21fECMYU
	 KSbeBAT1/aqhkTGjVDPtPetYKsC7CImnBwLrB6fNfIaNsDweAw9gUIBCsgGtTy0ECn
	 B6Vksyqi/rUVocYdWu+OfHnXsoMGX6n79fQ5q2bYyc9X7C8J8DdEpe8MqtYiU7SV0W
	 VKfg5HNW8U20A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B0DC001B0
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 06:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169199598866.21599.8590649609743348487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1cd9c4e42ea56c2f5fd57a14b64278aa9a822eb15645ab95852ded2c3c78c0b
Date: Mon, 14 Aug 2023 06:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691995988
