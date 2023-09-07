Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C023134A3
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 17:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA35BC43391
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 17:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694107448;
	bh=+oB5it8q/urX8jizDVXqpgZ9rjlwdFA68ySVZXjrtT8=;
	h=To:Subject:From:Date:From;
	b=uOE0RvcTbAGz2EkSYp6resmQRDQxBTlDAEcBLtWWkEzEHrvBFH9lt2tDEbI9a5Ppx
	 t2Q+AFjDhGcuh2wI9yFQtZ5OCg8TlaVyaA7dVI0xgGPX8Jocm/HbHUv2BCyZ+s7TeW
	 oSL32G705R5zlr0+KvCTqpbH7BB7LlhuRzDYpXT/AIvTKKulQdh4RR1369IDxbHyBS
	 MhFeciM7HFzezGlAOZgONuOYsu+PE1M9TIq+z6gExeVfiAnYzEvpP6j6Ceq/35DuAI
	 3z98wiGo6M+0gmBjD25T2rSocRQCO5fYlQwh+XheIkrAZ1n3L9kWGAt+aFS/040CsR
	 hicRRuFBC843A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2CDEC8743
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 17:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169410744870.13131.17297041496502720138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120b9eb31c94ed00caca01f2bbe7a8491011446a9bb628f54f4cee7fabf1451a
Date: Thu, 07 Sep 2023 17:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694107448
