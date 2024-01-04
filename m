Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DCB1D68F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vuj4lDOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87208C433C8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704349696;
	bh=NBh3dbgMCypFoofoixQMQ6AUU+f9cdXXXduxMcHm4ps=;
	h=To:Subject:From:Date:From;
	b=Vuj4lDOhW0tKrTpNG3hW3FiEFgUVz/k6UCOvp65UQ2UmeCORCS1kNCuW6zRIardM6
	 rPybQ/Ety1A50WIeCrk2y12OKJR64LOQ9cjrDFsogYrOc4JZ12VGtCcPblQBzgadLo
	 uF0vTur8a3vZOSxXbBXg8XuQ8ImZBNf7ctgjIA5cY/Qvwovx1GWrkJO0AxcnscIxKq
	 Sr5QapX/2/NH/KeLD3jHlqRnpsLGwbAKSA9IH5v5hSMuQqmLoBTcftXT/bcIrBvTB3
	 uckVN8YmPJaV676WXiJDriYcl99/fGt4cfyCfDKylyZRnkfMxx5xhaWaMdneAX2Ghg
	 CWrTp3HN5wuIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 656CAC4706F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170434969639.3584.10362758699569227333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ee1f9285824a9b42dc412d0372a336128d35c9defd5dae5614e204b2c18e4b
Date: Thu, 04 Jan 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704349696
