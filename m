Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C5CEC5
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 04:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA82C433C7
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 04:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692506648;
	bh=Z1jw2/tGzpPSsJR1+pxrErPqlPW4vAcNvROUTkHApXY=;
	h=To:Subject:From:Date:From;
	b=t10Bb/jKJ49jafZQlWLmVkh8/u/sdu0xn7hy7u1eYjoC9wPjfxyQCf2OwJ3AzB1jD
	 ZugchDetCw5ky5GRS+BDqNQC1M3DlJtTUByND7LFqDf/JEPfAQXqgM0W4Pvu3rapwP
	 wyYRP/UVKRlzQc6yLzmse5DCMtBIIgNqyNwKIg2MAbUrCL41Mbpd61m/LYqnZEdP7c
	 KxDv/Zmxw/RT+tS3bICk8oEEWEPMGLM1RXrkDfy4k0pxXl51ePSoQwM7TsY1vOU3HN
	 YYIrz2P+xbdtIzvpBm6wP6r8Tp/wFW6AL5MHAM/BNNECPXkbv0/qNNU660G5QjLLdV
	 P+rb5+4aIjF2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADB5EE4996
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 04:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169250664875.1962.3333153149475168461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8c36bcf8de08b5686a44c0e85d3adfecaf9d4e7f6ac5ae3d40d5a11ab57cef5
Date: Sun, 20 Aug 2023 04:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692506648
