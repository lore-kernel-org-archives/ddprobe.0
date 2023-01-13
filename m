Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5543AD4A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F272C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673631087;
	bh=lLl8s0NHpNVfawtRCQQrPzk6S07FlVIaefQDlzpBcHI=;
	h=To:Subject:From:Date:From;
	b=tFpyI2HyAYkyIhuRBHdykWVimUUE+dRoCVZaAnFsOo7huXeX1k+SDj4XV7vogxa6B
	 /7yzIhYUg73bDBhWKEyck3Mh4P2SL8h2gvsJ+S9YVFbjK7jq6r+7L8ai6Wk7U9OwZs
	 2AMkn0gCxoNvFpsq+rDcy3rus+lOFisMslLqiojt7VilOaDwVmK7LFsdje8V4y8wP7
	 3VnJ15HI04n+9hD8YQRmNtcOcqJKwiJ3n9uzoA1yEHqr5M1ZhDdqITRC18iJLqLhRJ
	 Fq0oylFmLI4GYwZy8sKDRX/RvYo9EiQjOKwnqNrHQKwADHt2IEJyOkSr0XH2u72TCo
	 cDH0YouvVRE8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64074C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167363108740.13469.8989044810530796617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bcd6d8d3f83b2d209502b2bc2596303451eac2bd5111e6d6a02518ff3bf7d75
Date: Fri, 13 Jan 2023 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673631087
