Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294CDA38
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 07:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D381AC433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 07:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677570365;
	bh=YGyKRLAsqMdJIAtgcpnad+zkSZbKpx5tWhxB/lyMBVM=;
	h=To:Subject:From:Date:From;
	b=MlKh4tsgY9ebXwuPKZahmjutrluHhGpVBX/jsAGWSRE/qSKeapE4kqGWWY8zE1ooH
	 KQwsKsRCzysf24zBJ4zlhGLduFdB9RzNNCfoIGLyb+5YuiY3p7r9Wx2U5tgzenqfMW
	 AfY25ec4jKnEtZ2x4crjd6kPGuv5ep8FtIDYO0aWaDGT5FFHsm7sS9mqnVqCVdihi6
	 LRRj7dpcaqUS1IEwQiMxZpDpn94hn6Pc+osDwzU8heAUMeupL2gigT3SwD+VuJdOO3
	 tDGDthLohYtnu9uI9c9He600JyPL2w0IvgcVlCkT5h2axYEfaBbw5vfT7iXSawvFLy
	 0MH5wdMckw0+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8ECC64ED6
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 07:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167757036576.24886.7637838260513435746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd602fa5d1bd62d5550dc4522b2501390f65746ba9e15a72e7620cce77abd247
Date: Tue, 28 Feb 2023 07:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677570365
