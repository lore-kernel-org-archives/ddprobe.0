Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C606B33C9
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74129C433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667237454;
	bh=hW9uvoGXERiHfEsk10NadeTKv5vMh6a8eivPdz466as=;
	h=To:Subject:From:Date:From;
	b=Tm7xjHHm6a7gsRgsN7NhlmdIpTBGkcoHG+zwxeUvZ8q3tV8AnNOeWcdZAiHPvqdrv
	 dtVcA7HPY9Miy218A2fYjBgytWZf8MAviakSK8nzRxQz51Dp6my+fdmU3fv9q/8bgp
	 nRi1phOGRo/hEQcouSleafmQBMfxuT01NC5an/UpmHhSyphDH6sroX5UtPYdlYM6nd
	 H5Koa5oN+YXSfpIcGkGpWrkFBybzs+RQ7/G3RNYFpXvclpueWL1g5jJo5AuwitH8W+
	 grc2cdt0GoOPhvbaw0eAHFwKNHHMpryXKDEV2jt86EdILmimy2cvKAYDrVU8NcuTRW
	 n7snYMAVdFhaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D1CECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166723745433.31486.6312211780842268805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6220dcaeb1268c4192d7d9f925a3e9ca3d9b4df38f7ce9438e3fc1453453d3
Date: Mon, 31 Oct 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667237454
