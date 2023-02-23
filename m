Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0901C26
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 05:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4730C433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 05:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677130505;
	bh=DGvmVUNEalaR80iT/C+PbdaeSt2MGVzpjx8uM/frbLE=;
	h=To:Subject:From:Date:From;
	b=bKk+umuWkUiKBKgH3eabVGmFazopmqpaXJcg5buN6PX8TYA75MkhgZbbb9b/vW7Gz
	 NhU/cwkyvQNyeIoPHHhBJzy/TbTKvm6l2SQlvT7J95yoYaUvuDt7rgcSC3eTHBLNrl
	 +8CfJ7gWU/OFMgswuSkqAeF/Xi28f4ujDOq3sFL50V+7+PUCth21wAWzlXqNbAzjY4
	 ZKxPBrBIAMKfWTVSRxTD4/P5kzQBmdFK1sm6mUR8ssOTIerU7FvZMBWgTi/JEDwB8Q
	 xPxxNN3ZKzixK+j4+Gw/gDvT+O5o/VVEkXtSIuP/bFVu97lux7mymPJqyCiZNDWLwm
	 LrU426hNq0nkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2464C61DA4
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 05:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167713050578.4976.7675062115295125274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc817096721bc1c11c5d838f09f060d4395860102f3013b9ecfbbe95ece513b6
Date: Thu, 23 Feb 2023 05:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677130505
