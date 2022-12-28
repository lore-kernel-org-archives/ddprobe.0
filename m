Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79B710E9
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 864F1C433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672217487;
	bh=JyoDHdLQFa9ZaZV9anv14jygPNl8dGTRVe3Qzu8P4HI=;
	h=To:Subject:From:Date:From;
	b=KSLTEp6YWJXS+PD7l1iwuW82KRMbOmXuHDEePJcANNWtGM6uNS04KzB7PMkrYYtLp
	 axbmDusHjVUWO7SiFdivA5bEtO/MnYjgAxVfzIFXVrcgFr0RUjIlYSZjr87LdBrWHh
	 xDTWGowsQiSWrMljESqZMjdaoA1jsvBY1+/52UZpBwhAP5jz+JxWlmJ6rflWFgCwds
	 C9RpeqOMaG2fuWiaPUWr6QU3eamplEoztNJaBdHZoxnnVuUwjRnUp7ET0nvSC5p0vg
	 BahTEAunpY+LmRUsPoVUm+jBfpMG3MBtFKQDB2TrvgMOJW8ACSO/pmYTEjbKmX9DBf
	 g6LpiJK74JYsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A3D4C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167221748742.22076.2625421222382444255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4068bc971af060b74151b0fce59dae7f38515ffc7ff18ab33775cb935d86154
Date: Wed, 28 Dec 2022 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672217487
