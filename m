Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619582919
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 14:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D297CC433C8
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 14:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694271248;
	bh=8A7jakfTMMTYuXEDRBgM0Q+fUXSYd48Mj64Dod9HgiA=;
	h=To:Subject:From:Date:From;
	b=fefMxmEQavg6+Jc3tzAlPG/HnnfHXrAcXaYOOpBWF6V1hiwN0WmZc/z5oQwkqo0X7
	 FxUGXdOmWh8DE+MmftvZ8xynYeKT4yYyk8+8aA/85SerVYukzL+fl0yEI/aQAOcndz
	 UDU6zPVMCDM+k5nn0PaSfjwUz2Xx06v6obi+Ma1R7KUTwL79TIh8Tknzctp/rvYWgw
	 lsuLOU4wqWi0NJEI6W1Vy06c0zbM6WplYSRMrAp8T0Yz/fndt0ZVNGIuoSiY0zqCeT
	 WfUOH04xqR7x21HEvWyjLhkbPOlAR4emowykQD7lFzui2AQ6HNQesX7j0qhjGLJ9U0
	 Ed6f6X2LzCkDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE74CEEB572
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 14:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169427124868.20563.2661198142423566675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b9fc6e959b3fe120554eff42d8ffcc1732aa1d124fe3a8acd5cb66c763068d
Date: Sat, 09 Sep 2023 14:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694271248
