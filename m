Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C4F3C26
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7687AC433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663854053;
	bh=g2flaqxbwkG9BpoZZhPSTmRuWhqAkWeYhkk9eJTOIzk=;
	h=To:Subject:From:Date:From;
	b=qHaVtfMCvPDO96YobV9mWnGyuhlHB7GtqIYt3kUazZV9nkf8XPCaXeG3pbIfPN9Kq
	 Pei4+lt0ckZe5VVj9ReAB1MiDsd3Jx3CZUfZSU4sJ07DopnVtrdu0HKfbw8dq+U1t9
	 oB+U1XXTKhhtmOz8Zd59lM33y6bH3HuXcFMK4oAZw3QaFinrtAS6ahCQw6q0NG9HgL
	 /W0T+6sSPoGwuKbUN4d5K2YEh4d9D2EEkFOsM2D4w+e5DwvDIIO0vOuqTxiBrWq8sF
	 1KzzMcCnfg1H5VNlnEvSu6tatSvX2AIHi4rhr5trkj3nwHht/9XNiVCv6IvlPEfddN
	 X2t3t8YVZSn2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5841EC6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166385405335.13800.17828479558551629783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0dc85b66d15151f54ca6d3f91f2b65658adaf64f6fb8cbd9d5eb02a120ced64
Date: Thu, 22 Sep 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663854053
