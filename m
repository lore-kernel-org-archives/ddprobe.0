Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448B81FB8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 08:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E23C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 08:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688114588;
	bh=E0QDxWfnxXteB3P2/+l+MU2Jc5K1nUXQCt5KAFItqvc=;
	h=To:Subject:From:Date:From;
	b=e/uGEThnscpvvNswizWqyO6yfKxYRAInFSDjiyFS6UaZhm0Pi0PUpJZss7PVzltKi
	 5t1B6PcZDrzbNSHts6dFreewli8YaYM3RNzY99pudQ4YcBQ3AxiP4mqEg93ketrxNi
	 QGU3laKQ2FBKu+saSZC1I233/W/Qm7+Q6WhO2RbLxD/8djnTgMF44ChIPodnacwReC
	 820yuQ5bT/H12MSSEifp9zSAtGS6/AJVNZ6vWnAELD+Vj8wLoix0zbGARkFmyQnDiV
	 Sx5THjMuWrwVQ8Ej+2JwtUWHDzrcn3pqNbe1y4D97hPALLjgG3f/NowUzeHjAvsTBV
	 eCyU8D8c7oW4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A470BEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 08:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168811458866.331.1600571908437798600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16821dfc1be2449f73ef7785d505746c5bb5df43a9d854fbb0b92a56ead568dd
Date: Fri, 30 Jun 2023 08:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688114588
