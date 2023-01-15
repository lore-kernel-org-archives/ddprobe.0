Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC3610E3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96535C433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673810487;
	bh=7kZ9965K+3pruNyAi4CeD3ExGl2iupDvEgVW47a4DZM=;
	h=To:Subject:From:Date:From;
	b=I3vWI7Be2HUIaRW62/mnAT+eEnOJS84lGM3XN+SC1YKZl5y0sy6lhuJTYBzKXCvTk
	 nbMcKTeoevBikZ1YAL1Byxw1YlSmG9T1rL7PK1SdyvlCN+BC1YElqsr844SqU9hkOg
	 hNc/6xM96x1Fr9aB0MI4DF9vz0FPw0QubKLaJiGGahEjqagox7NMbvqwzsPA8SM2k3
	 PGawoF35nUt7sunmf1fyoO9fbJV+3D3UNMdcpIBQlnQCfpm6oVSKlwE6kFN8VbV3EM
	 mWgEheRwZnKfcOF7160Lo/2UuXVFF2Myaz2qywhKhEvkmFrKjPm8l6Ww/dL+QIbbss
	 pEldSI8R0Ugnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7440EC3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167381048744.19271.5075553130354177328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f6c6ec3f3bda21e8a4bcd704e14e2538373be60ac7fdc39d45b430d932dd7b
Date: Sun, 15 Jan 2023 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673810487
