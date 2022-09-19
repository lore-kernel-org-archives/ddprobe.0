Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC43E746D
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E63EC433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663621853;
	bh=8XFJE4S385b7SyOU6rX96N1GSK+uqQKrUG+TyvdiutU=;
	h=To:Subject:From:Date:From;
	b=kPxn6wlGzzrmMEV+RATZ92X19eT1q6nfwhCHhFfxWUPJDqq3iugY1f0u9VOTVmvhe
	 gywUuItYyH8M2YSueLshYgWegZR3nCvUBm8esoEooRwNefdPzZl7MzTDmuh6tjaQMx
	 5JvR++qMAbMniPRjKQW6tIp4An4l3nuASV7GO3Q0AoLkOwpu4tELCqIqSgVgw3ewcr
	 6ja96iydUfcqbSt2KnkTisF1Q3VTFQZg+lcCIIpEdz9gtve8XT8yG1rvZYKGeTvXhb
	 8DI1BvJh9GpkZpEmpr9t0+5xtGZtZa85b1fv5DdwcnbDsPSpujk8HF+u+mYb61yd2e
	 JYQHj5GgaMzFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57516ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166362185335.21870.5177824492874146648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 489307643f2d90c39a56e6348dfcd7cc83d6baf11302d6381c8c3f50c9b84ba1
Date: Mon, 19 Sep 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663621853
