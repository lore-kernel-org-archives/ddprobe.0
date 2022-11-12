Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD28364C
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79CB3C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668285054;
	bh=4aes0Q1igUGwgElGiJ558CqJpK2kynV5Odv0xEyvQTM=;
	h=To:Subject:From:Date:From;
	b=VoN6qHAqT3asK/K2NIrMB2desBsQWhTkATpHu+CpWpw4MeC1eWfKKIOzMS7kVx688
	 j+eNefypHB0osYfPlMFA+G9qLmanfqQ1VOgCWq2p3KDKc4XQ3OMDTttckjBzVoHcdG
	 d66NkqncXvfih0IN+ZLDVV40qgWArGbIUgQFV9B5orav0CJLqyJlAG47GiaxN0Mdwe
	 0Ugop5V0oyG6LENNCca/XzDwzQmnqNllES9qc5N7WTuzXvRHC/NIBgT7K+gO97KOfb
	 9fUDGjJEvKsLXOEW+f3/e8cnjdjvoaGzjPsxUFr6H7qAIJaW3kUx4xmtsaKm9dWnc2
	 guETYefurbUZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547AFC433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166828505432.28705.8685720821495244528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d255549b6411a945b9121810322630c3156f0b971a9405ce4c3c01da8bc2542c
Date: Sat, 12 Nov 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668285054
