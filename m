Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D211363
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 01:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CB77C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 01:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661391052;
	bh=+G8yin4/fzsr2KVhLx3Dk1RdusC/KBrTDYPVo6+mTu4=;
	h=To:Subject:From:Date:From;
	b=Yt/iR1MZU2thOG0A2yr6qI7NavjEEirVVByKV0rriwlmdcE7j/6xyktd2r7B0uoW7
	 M13nlgpH5wM8m+IpRjGtamUmgOPbJ9Sk+10+HxGPRUrKJyYRJzCZL6U9oHeArHZpRy
	 P9COfRw3aA1L6zW11+zC/Bood4JSHKY7osayJUzuieyAo6e/qEoTZaMZGN4R07DzOq
	 FKCSeKjQW6MQGeQy/auoDV3mpMjtHcDNmkpHyEymgmEey2zFmt4cteC1eQJ3hBxNuh
	 SSqgNCbaaR18mgCauHuQrOKXd1X/z+wfIrsSBcJ09oyYKGu/qZypx5tz/tcvX5Ggfe
	 GNecM/n2iSVOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E21C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 01:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166139105233.23081.17371362853365257370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86881005b9621bcd9cff4f392e2e42dde1be8b90a494f2e9e68c1bc4dbb1ff56
Date: Thu, 25 Aug 2022 01:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661391052
