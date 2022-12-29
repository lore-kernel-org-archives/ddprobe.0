Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D781D3201
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFA7C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672348887;
	bh=yGc9iC0qcm6Ar/KHjINXxQbrMCa+PCMzHy1ybRTLgCY=;
	h=To:Subject:From:Date:From;
	b=B8r0rIyzYitImaqEqcPkEltyXFse1QDej2mo3C5yS4gG1we2UgAwJ6lkyCUIwBXdg
	 ebnodrvydQySnXmn/gTSEuGkaA8RI2GzBLtPVDoBzW7E+GB5ZfPzfveDd4vPy3IKGO
	 Plec/siTNJcQ8FfU+wzyVNdMq8EvWcZZon1uhjNGB1iY0+jygIU0+hrIOKx1heGVuH
	 t/shDUtDxZ40LBBt+oJsV63ivIv1ogLLrVzfwDz06vUP6zE6mXOIjcxPir4MfJ/7HQ
	 mfvYLgmNwJBarziqyMAjhhr8fk2GIxasK/lU4Ukk/eLEtDtQZoifjAWsQCTaabD78k
	 jc3qn+HjjEtOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64175C3DA79
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167234888740.14494.15235344176411462702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345e1cea9dc7d65ec71f955650c5eaacac44136775829efd89d4955c1e3f42ce
Date: Thu, 29 Dec 2022 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672348887
