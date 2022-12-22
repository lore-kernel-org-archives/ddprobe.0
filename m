Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0AB31FB1
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 826AAC433F0
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671687687;
	bh=WDdCKT8ix/TOgTrHj4UVA/J2Xh2xEdVDeTO2nPV3B80=;
	h=To:Subject:From:Date:From;
	b=g54r9zeJlnTs5eV8DG/hUNiF8IoPZA75mp0iEjCMfgiXlWKHzrJuue22OWnXnnsCU
	 doWy6shdiK8NR/clckUuEdvZzzwBgomTrXYFPqyjj+MjPwL+IGU49w98Letyf9rFOS
	 0HYiY1fpil9BSbcNXNGlFlbJm6GduQdFPO6q+c+hjWtaY3THP8R4+a49RbM0mCjmmG
	 PE+iU98hIOfgWZZXbKNU1Z4xpSTZuq/yTS8HvMQ6I1l7zV5yFdpzpW9yQEvxpeeFLR
	 goejFlbVsbQ/PoRD12iBnbF5Dt0P2wYAgOkPBmuWSBTfbXLwplA3dUuWQJ3J0rp/Ld
	 z4dmIMuzROATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 661DBC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167168768741.11342.5958086346433521141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9092a4f5cd2e151f1ff126cf399b713216871c242e12b60c0e3db52303c14cf5
Date: Thu, 22 Dec 2022 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671687687
