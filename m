Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4D6107B1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71988C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670266254;
	bh=1qypu7G+gBgkz9+bw4YkFAZRezMiUQCIyseytkP59Zg=;
	h=To:Subject:From:Date:From;
	b=b5L+Yyv8uSwpSGmC3i4I2IjIAEEkzP6T/F/hCTof5DGo2hT/wVVVSL7emBW0SlYEE
	 qX43EVJDe4pGTjXWpSHGTbXQSi3jFL+CEMDenxW17+tNg5olsLbBrwApXfPeot5SHg
	 50l9cRoRAjRFHiLWHTwXrjx6sBiKy1gShaY9fcBFZTvQyJcfWSb1npBuP0En9RFAUW
	 3EBanPShRBHjs43eUvxrbCd03C4JKy72JFYrKOqdE3dbbZddqZoKgKpUfG/SW9eUxv
	 XkBLob53rfsaDz3H/KddsB6UgB1s3mGPHirASkf6PLBh9Q4XtWf/MqTmuDKHCJrQ7c
	 uvZf9ZnaHjs9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C74C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167026625434.10529.13877231244518569007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4c2a5625b52e396fc11875559122ee82ccc7efd700e14cbfdf1444113c50bfe
Date: Mon, 05 Dec 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670266254
