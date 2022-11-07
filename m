Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C834AD531
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E43EC433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667838054;
	bh=xT2lfK3DqzBvL71lUdhUpVKk1egv9dgm/rKADcVCnEg=;
	h=To:Subject:From:Date:From;
	b=u6ivk4eRBHxhyxLcUemcAX794YrH9tdJsmlt/EOr0KqJf7Prr7/m9L/UldkII8qMC
	 gt44pwcZy+jfTvPp9kbruM5DC5Zi2Lghzl6FU1bHpXe5t0kGFw5O78MerjQ5irWk1q
	 0zUErfgd65mZTnDQmKiEWJXhce9k5UjEwa8b3lRvVLDcCMa4XxD6kzq8mNSiP4Ra7B
	 SuRhvjQC3dcbZGGXu1fp6+t4rkIq1dy3o3Wx8V7I1m5tbUwwrUtxw3mWw0Va72hWtM
	 LCcf8kiNAri8KXhWyctJPu6ifaKLQbqRVvgccKObEHmJAoE4MX87yuFqcZK/4K66n1
	 Hj3wwkVTMjiaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F39C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166783805438.2599.1936165621544389076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42a8ceb994dde5a2ed06926583773530a589c7a2515c32b13dc784cde8b201ce
Date: Mon, 07 Nov 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667838054
