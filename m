Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5442F4A
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70EFAC433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668888054;
	bh=A37b+u/Em9tws9JlyxpmWlTjWwhIJjBHehytETgON94=;
	h=To:Subject:From:Date:From;
	b=H5fa6WNVyJ5S8LA1Zg/qg5KJYCfdvUdjgd7G4IeiyQjvAx+GGvMGAvtuTXd44S1Y5
	 lpe1+J0O6mVuD4JGqVzdfX3LMWd6LbC/k1gfuxdMHNT0bVEceQ7tDeERKbcFP5wsex
	 0XHgvcvM4wCznKfnZOYcG0/H+DmI6bCQjMMLHoNIsiFOdNxoxzuTbdxVnxJCv+4/jL
	 FYWKEfJh38g5BM2E73sc17Q5QW8Wybwm9MUnruicCflgsSz4xX+uiBVja5zHdxg0j7
	 ELSuEgoTJk3m3uibtinpWW3Uf6fh0pgiIFhxIoGmEoWNIL7U6Zh5IrPxCU4ms5HtHR
	 MgtoYVOFZOOEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B33C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166888805434.7334.16989309893646574473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b708cd9e73d25a7715e5de54426803a59b24c406ec78b8b73aafd178adb4ab78
Date: Sat, 19 Nov 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668888054
