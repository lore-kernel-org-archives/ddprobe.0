Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D253219EB
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 21:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHPxF+i2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01AB0C433C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 21:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696454769;
	bh=d8VhvtPjYpDMVMU4DOdfTI+RUImLM5yUNgAgf1h+baA=;
	h=To:Subject:From:Date:From;
	b=uHPxF+i2cePxFj+IidnlJunI2+CgicC/UDtLytVqplScrYD534wPCADtFdE3oD/gS
	 0YrZQMRw6nRzzoSS+/ssaWtLP2k8UlUo1F9CP1vU9+nq60p+jxLjk60KkMnaE/eIYa
	 Z6ud8/0UzTcpKijFkZikGFx3NR1dxfImLq4hHJLzHUCgZiEAqK/bOEXb+DJ2V2MtNY
	 g+4klNtm9eEgtOiUXq50Nv5tOK7LV+5QYRo/SfBKQERrKQGDE9/NrfgfT9bbfWl46w
	 Uk0voZ0SsjgUcpnuag9iguMtZttobk3XuE97LLxvjQjW0D4GJvluyM/l5ntxfW6pIj
	 9iIi3WOU7+sPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7BBDE936E6
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 21:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169645476880.26675.13475318135805871253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d71cbae1201b76bb23a530ce4fbe0e581d81a38485aa887e2b1546f11ed9b2
Date: Wed, 04 Oct 2023 21:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696454768
