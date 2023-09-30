Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF3A2F5F
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 10:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB00C433C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 10:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696068968;
	bh=ZrSW97O1H09AnBf1eTqJAf1o8tjMjJxNHN8c+exL9qk=;
	h=To:Subject:From:Date:From;
	b=dRwRALdi4/VNyZiyty7joYpGrtXEFCHf1IPngeYdKuk7X/h7txQIZaFSOt922lhaZ
	 tPJUmsJnZbGo9c2WimherlTtc6/9zmRVYUwRZux1T1vnGZ58nqu2cg+p7FKFgW+r3a
	 jYmRA06dZ3jdx+T8SOSwSJolqqAUG1HzlolBr54BYBoRFfpafzSlMjn0VxG6v2ASkJ
	 v8Nyf0FHZH5kAvFI8DLOIG7wahKFkuFURGwtkFnjsUQ8EBwojXWtsHyDY9d8VQY5+6
	 2toQZomLUkhwH9L5oMjWMTXS0vraeVWEgxn7iTfaapvZfnFNSul/jaZJpidopjqwCL
	 useaLwpSl5NNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD303E77366
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 10:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169606896870.20665.13075786339496891514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd38321aa6323c8b77aa4434653b265b789e20d672dc63c238e8cff7faf59ee4
Date: Sat, 30 Sep 2023 10:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696068968
