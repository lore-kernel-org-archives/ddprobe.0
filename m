Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC80107AB
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 950D8C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670104854;
	bh=e5u7Q+DqzsTyWZ3njneK9yCz40/DnWjqhqABuylRai8=;
	h=To:Subject:From:Date:From;
	b=iMfsvhDOeqCddnlhzY+auB79KSxZ4v/+stxKfDfHwQyhM453lRE3oJSPsNaO0qwF7
	 bFDcWO+yuCS8gMMC80qevifQ1sA/gp/pEzm6FRssq5iXiiHPNVOEkxxFIJJ7MnYlV3
	 uX5O0f0nH1veyMNhqmHXqaMt9tRpOVx67M4Lbfqdx5MzgM2zZXd2kuaTYJH/XJ7k5y
	 zXHSitmABCw1iHKsx2Q6qOKG/MIrV9hgyQ0ebgeY4pgSzmo7UIa8cJW462NroV3Sqd
	 UJ9aHuwjT1y+/zucv6gXDhDc24aiUeB67LNC+4M/kTRWutgtcSKMtTHCZumPtbKkwh
	 eeV9lUd0GhkKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B36BC4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167010485435.5301.15429740911422450296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ceef61b09580cb7ee619486aa9aa1e3e81bf7a1f6e020a27fbcf4ceffc4860b
Date: Sat, 03 Dec 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670104854
