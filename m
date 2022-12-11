Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E12B01363
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 864FCC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670737887;
	bh=diXoCnAcYmuYIKhRT8wzK9maae/z7AwrQHRkxgOpgGw=;
	h=To:Subject:From:Date:From;
	b=fpdV7OCewIMue+r9hFxM1ANk7VwKcawskOqfKcck8E/ojSS+W42OerwCQBd5Kqwfy
	 Kpzak+vKwKO+99d001mBNYaAo0PD/sIMOyGR2Oy2ZNNojxsD403Qa3i4JIohr36Cnq
	 2eafUp70x4FD9A/W3FtRAp3ye4dkn+HYytiDjvAjkMXDGb5zM0ok6DcJMviG/eBMDD
	 a3W0SsKc+HwtAIYb+ZJnfxWnMpYXzb2agjBy0W3dkn/dJhSJCV7Ch8Ck/6raw+6L0s
	 08b7JdMbt+yEWEt1AwzLk2awJfyLZ5mCdgznrgHmLrL/k3cBk/B6yLYY2WKUwbg6ad
	 kWT8dAU/KRnmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64833C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167073788738.11125.11452330960832301429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f81a3e6674d92f74fde7688f7b1b6e0704d1b7a623f53eb2fdb28f058f347e0
Date: Sun, 11 Dec 2022 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670737887
