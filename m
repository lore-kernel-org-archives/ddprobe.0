Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A57CA3D8A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 08:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D723DC433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 08:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686040925;
	bh=fI0l3qUIpUjm/sjKq64cFNa27ESCaNq9hBfStdPopk8=;
	h=To:Subject:From:Date:From;
	b=e47NGebmov9p5nbFbE8Q9M+DPCn/NJEAf03FiUywySi3d+jG1aKsFxdR44Ak3Ap2C
	 FymOkZ62D7UGgs/59U8TNovRdVHOIZkUV+T3sASk1/RYu5SZVcM5yj1rQeef0MkKk9
	 8eqgDQdYJoD1xE9B+A7slVkEA2Kh/YGB4WIXUfiOdKttROLaXiUmKTIo8JId/y5GJw
	 C6LOv3qBh3gD7M5fNHS7MmajoV2EWnndZpXLgBvveGiDfFHjip4gLGb8zhN1AR0GoT
	 cBuz+gf1p3QMCsGyixueKaHdio7Ev1zQRfrldIJSIO7UAGGa6n+UYYbiUY52a26wM1
	 BVulF/WChNoFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4230C77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 08:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168604092572.5546.1761735363406222895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab31d614a29cf0fbb0a765f54e1fa8d3a60a05ecbd52398b7b47f866e01fdb6b
Date: Tue, 06 Jun 2023 08:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686040925
