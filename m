Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9905612F
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8608AC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662762053;
	bh=66N+OCuerNALIzd3HzV9fsUyLoWy9DX6dezHiriCCNE=;
	h=To:Subject:From:Date:From;
	b=URCG1QI6N36ysVwu1YHm4sB0x89TJ0divvXZPbdaivPyXiVVCfov1lu0tlCeeVO64
	 Ld+CsQtYIYyHA/4YNnkwbb4z/F+WAS84FRdZc9kLH4f3vR9LEQMOEeXGS8e7L6GgLS
	 wcCxpJV+dP5d/8+KGurXs2E+b+hn54z5YFPwqUrrYAyddFZiEgBgyXKXrDeHtwg4+Q
	 HjHj/g5yIuAe/2qi9jr9b03CG/NOVijzauqSTtjAJkNjUjMTsdrw+/MHPCQRNuyUMQ
	 BxUGzdBQmuzlgV2Pq2V/ELi1D7zCWjfGuTaEIrXd5hC25AbIwfW+DpuRnhHgDjL97y
	 YLml5l/gBspXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D114ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166276205340.11417.10589858159533938677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62432b8bb6c3c4bb6811b24a1aa70a5f0bcda032bb88fec102c7fad4ffceb8c
Date: Fri, 09 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662762053
