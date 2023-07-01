Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0F1D510
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 19:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F20C433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 19:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688239448;
	bh=jSDAOkJM2EyDOD81b7qCCz048Q7s9YgCtUZf4oH/Oh8=;
	h=To:Subject:From:Date:From;
	b=teXj95Qg6UwTu8Jw4jOrLY5TJ2ZT9G5AkZcPdMPDlWF4fSdETYWZqxGaGtCggglUt
	 NG1rfs75wMN4qzRXeAPFER/ckrFNTb4vxc4I5WpCyr2Z43whWSzOdj5J0i88xrA2VM
	 GC6Pc6cChkcCWZz7vUfILEB4sNSh3nfTrN+LEhdJwjHkMwYE0bVnKvFl/Rw6mL0tk6
	 Z0hS8X0W6A+qfh1NsZ3V/a2C0u3fDz6MbZCy7cqmVfU4YveIbODRI8Yl847EzGUZFP
	 xGPtIA5CovfSJoYDcjFuYVnc+CsORT15AhOl5HXEahDQEk1XUs9aBCuxxO/JlcGsQ5
	 qmjslX04jvMGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4173EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 19:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168823944872.28362.17308176834225431457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a60315843e2b99c6df9a8ed9dde85b02e0313ef0f005366b9c10debd11ca8f
Date: Sat, 01 Jul 2023 19:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688239448
