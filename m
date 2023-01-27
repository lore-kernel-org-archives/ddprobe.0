Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318DD2565
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 09:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0058C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 09:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674811985;
	bh=J/ngXu5scRZ80vkyzJkQTMc8JPKVcQPqoHgmjxPyhsU=;
	h=To:Subject:From:Date:From;
	b=JSFrEJ9d1aCXwqJUzBM+kfeF+LOkPhkffy16dOb+nWJAsOjfEM7zBZVgoEvymhMJT
	 O9dNNi9HKmOn+HmIufHGugE3UUjVKmTLyTBTd7lphLcCiOwGhCRmTPYVyxn0Zs7qnv
	 ttrUvzWEKj/7grI0kunksCp1o+zIRJLwZZSUXHJ+SZJf3SNch4GsHcrlZcn2WOIzib
	 Sul/KXXYols3Mv40GWbtYgEnJDxLf4uRR6M9xByj+KxujJPbNZS4+v6SoXL6GbnIqw
	 z5rVS9IObNnmc/+U/2fJ/uMG0+v6FXV8HajTdLFkClNR2orGn2dPFkPOMBturxMTir
	 vSwHEKE7uYSGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BEEC54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 09:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167481198578.30325.10870451624505836084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff6ace3ae66ac402929dab7c300ff824aeaab6fd2130b80e114617b58fdc61f
Date: Fri, 27 Jan 2023 09:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674811985
