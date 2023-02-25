Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE463D7B
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 18:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3F50C433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 18:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677350706;
	bh=8Scm7JEFas8SAXkh3Ma97Xn05o+apQkgH9/+vO63bR4=;
	h=To:Subject:From:Date:From;
	b=J4XAXdireqhgJhFCrbvuA89SyN3VVl4Ry/i2PChcJ6RzwEvw5/ppt8ly0dsXffNVY
	 Ml7EdJbJEzwkWXjYNL+ZwsL3TZU8gr+CcglY45Oy8h0BAUAYMzM2ClVtjQ+fUZshKE
	 9vQQDgZEa3K6yDdHoEBkCNV4BFDbO64TZIREQz9EXg/NApTx3jgX70tLKrfzHUHApl
	 h0bVUTtCZTcNeOT4xOV2WiZINQ877qrvFj6SHhRaPC17GyAzsezv3q9fifNzTjlKc2
	 qToB2//eNWkRV84qFTTLDQiWlffIJ8RUi7y1T1Si+qtPpxiEpCnt0c/RhVyYn8OsOt
	 9xEnXK5Im69Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2F1BC7EE23
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 18:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167735070585.18182.7683676922025068149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09cffcd66f08c700ddb979f2c3b6c7af63911e5cc02159ffda7ff88ed8bc75d9
Date: Sat, 25 Feb 2023 18:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677350705
