Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9603CCA49
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 14:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAD87C433BA
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 14:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692802449;
	bh=U4TRbOQnDDmVW7aPZYBmV1pOGULhObMN+DsqUz03Ksw=;
	h=To:Subject:From:Date:From;
	b=GCpflC213pHCMC96Y6oNZH1LGoPY0T+UPW410P/Y2jAuxzeFJcKNaGH4c4vhYEC9X
	 1hItZW4ZbzUcw3uYEWoWNYcsUxoIhIkQJm2hZ4wxw53iUPO6kHenPVlyNUkh61WDF6
	 YR5rcM6k9drbPMsJ3d5fmS8sVWhinnWFkuLrWdm0BBl3Pf3WienPEYWO/R1GXCi2cM
	 AH1KCrU8ts7CSWR5pljWaau2PZuol4Cezy5novORd3HQHB5H+y8GZ+vJc/F3fxKRlJ
	 ULNZ4Aj1gNStfyPf7rVKqR5BXQ6rFufMzRdiqWcwbyCsB79QagGRDkvoBJmaI+wTEe
	 sG2RuHc8dfGgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1884EE49A0
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 14:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169280244871.8404.15638122085111671618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf5ab78bb59ab7fe35d36acee1c1a5505cdd1a41d5c18268b606b083ecdd069
Date: Wed, 23 Aug 2023 14:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692802448
