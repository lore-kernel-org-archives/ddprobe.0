Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5511875
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfRqK1FO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9058EC433CD
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699598296;
	bh=lU++mbPQseOaEQvFHFIcscjLqo3+wknFGymebK5kG+A=;
	h=To:Subject:From:Date:From;
	b=TfRqK1FOVMvUggUcbvzR6tEv1Vz3mbGm2C1XHoVIudD+6GXYHtStPQDoeEdCuyU3I
	 GDpgZp6YHUN7RQAKkm8HzBVflf0297XGBxB3YhgOrTbULjJgMVEsYAP9TCV1y8Hktd
	 SmD0yQ2ehMzYGTZXHy5Pno7LEE4ZHGbyFgSRvyOAm52pelKvFMA8twdV61vyvF3Q/u
	 Co3Iod0TWye+PAI6+cz1zlzSTYkIqlOt1UhoMON67VlmswewSq2b4sFQ7anwRE/KBB
	 CDMOBFcprXUCITE0iCZmEV2FZGs1f6EVbK4KYSmzxEUnXpqXgIa8TUkJV0jB1X78Ow
	 qpaCOWvKy13bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70CBFC4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169959829645.7732.17211406324996533695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a4685350b5623dc24e7549151d79002962d98561b8323f3e7d2fed567a25647
Date: Fri, 10 Nov 2023 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699598296
