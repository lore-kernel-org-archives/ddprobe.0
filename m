Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C5A5A6F
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E737C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662830453;
	bh=WwblZx6PDke9So/xxwZ9FQmTvxZW69f3vOUywOSXtYA=;
	h=To:Subject:From:Date:From;
	b=t15Zqyq767QGH2MyFHhlWeai8q7kANJvTO3+esVG1Q5QyBDYgT45TR64kB28k7zP8
	 qEiWjjlTRv4fLxdLsNWA86Gvwadxkcllm3liQl2sp0KTf8eRF3IlyS9ZIiaZ4ziesU
	 9vKikFHM4nCnHOyc2Im2HpR6qUhdh1qn19teqapqez7C/KQBc0XAyBJpN9X8ufAL2E
	 o8py7450kSKFNCCWG+RF7/2dBZ4lV3G/sDSAWQg/a6coI87ajDdaO0LNSXSn077+4G
	 DFMZYYmFMXamJjVVhrX5RqcJkrKk8ZewfgQq23fkzpmpj2V/faELeZpv2HOi5tdgJt
	 A7cP09vsWLLPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55698C6FA86
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166283045331.31971.6084962872662472399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb66a62c9e1154ce50ffe70d8a6edb4bc4e4b0cc1a158ec6f0fd25a480e059e9
Date: Sat, 10 Sep 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662830453
