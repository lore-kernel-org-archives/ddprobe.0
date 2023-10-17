Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E14243A84
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 14:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOsDKXSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3D3C433CA
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 14:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697552228;
	bh=0IpWnhfEGI6qsmFQ6NLp7/H9F0fMovx/ccvzw4yN9CA=;
	h=To:Subject:From:Date:From;
	b=kOsDKXSEGWUL7ZkFNKnTHjoEnmo3CoCkYqGYkE5oFlFhC0TsccAzQK9DoFQRkGgeU
	 GgYfpc4s1w8QaK0OTKho7GrD5OjccdMdrZF8ElAiz3JypzXEUY+ogllX9R7XE6S/r6
	 ktdv0nYfeI5WGsuVObifm+XpNeiXnpfS38KBO8tmd5+dB0+kbD1Xew2pd+GY9/doXs
	 beI6s4ZO5wUUAkBL6iG/SnyHVCKdOpIt2gdBBiCAEmsSJmzDLffOWY1kirE8mhpoFD
	 EykNKs1yRapvGL8lVhqDfRbdj/TbdWZeX41QeTxraWlKBFjqUdiRpDMcVxBOFnYoQ9
	 VoIueYmJAUUAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCB5CDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 14:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169755222869.29627.9345374686077301025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8609b025caabd359ad0620eb11f1575245f6472b466d4f4acc5fd722964c28
Date: Tue, 17 Oct 2023 14:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697552228
