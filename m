Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9996D1B
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 23:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED4EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 23:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681687625;
	bh=TAFqHfqf1jwM0CuTeZOPP79VS//R6qhtn0QG6B83eq4=;
	h=To:Subject:From:Date:From;
	b=rpE77JTQJ10HWC1h41y1swozJpwPYU5QoDUk5YsQEz/a+7OGyiVgEDkPPmFCMyr1R
	 rbYqm2m3r34GwbJasid4dp5SkSdL2wBTQFKw6UVpd2T9NPIu43Q6OnMtajykfESQld
	 nusjO2xM7WQFHtK1Up/3GIjuZp41PyCqkkni3GiY6SBPng6bosmHp2WnfoGtgldDi5
	 5ieIr31r2AaOOs0KVEMZAr5H+/YJTpGO2mCytI04hGH1fqqUQbwyp9RjkiTpJ6Zaqr
	 Mwo9H862lOZ5+4NINNBAnneGq62cooKaFiJ4nchymcuSUJltRcoSdqrt7kgL7sWl6P
	 rHWJ85tmrHEjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAF8C77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 23:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168168762575.11033.14721630067224664493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ba214ab8fdfc3e5780b25af71524f5cc56c097c3494c3b49468b751d3ce085
Date: Sun, 16 Apr 2023 23:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681687625
