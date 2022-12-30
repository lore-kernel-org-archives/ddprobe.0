Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36E67E
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84E36C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672425687;
	bh=Da9xX5Eqxa4lloxjjRaAyY/lahGueM8zJ8r9brx3Wwg=;
	h=To:Subject:From:Date:From;
	b=HoJy0cmeoiEjeBB9VkEBoHuzpTGqISwTeRfY8uE6U0Mgd+15mBd7gpXxo3UuDKUdT
	 WhdFTUozoSw5T/2hhJsXrvCI78i271haKKHGdC7c5b0yeb8WmKhyQq7vApGFleFANF
	 wxCQI8+nMMvH5+qEX/GvQpzOOOgd/sommjfRtK5qDpAus1QsDjr65NcjFLMJNwXSbp
	 P9c9hpU/z4A/uYl0E5O1Nb/7qkw6sv07zfI64cSRNY/20l85hoNuWe9zobN82A1fND
	 PBfdi/spf1mvBa/kGSpQQORkKGt2nyDPr6uph1C1qwMVWbnbR7jZEeBtyA4VycQh7o
	 OjdVLRoSOoIhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66859C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167242568739.27471.4500993481742005700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f89fac7d0ef09e7a40627bf1e6d5cd5d4c49a35abef36862da0f82c98777ee0
Date: Fri, 30 Dec 2022 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672425687
