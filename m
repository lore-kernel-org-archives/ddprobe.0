Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E89D017EE
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D24EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671775887;
	bh=tqVz4tYzug3cFZOExXHAR1724T4R4FzDKKzaGiwCl88=;
	h=To:Subject:From:Date:From;
	b=rbwVL9Nm7XY4wy6F0LqpwWQTpbLRjq6efjf0fpNWagU4iWBhpDMtkQFAQLMvXnCPE
	 Y+lQiCxoWogFii2+4X73/B7kvRtpNFvjbcAgB31w3cIF97FJeDRbuJUD+Ip5hoc+dD
	 aAwOFQhaL8WCP52KU+MEsU6EheWhWUFYha9IbDB4K/acbeNGbA+xwObUMzkJBbqhge
	 zo3I0cx+9D89v/zNs/eDRVPakbcB9XwM434tRvsMSun54io9u0iOwdfLgVImZjiY4Z
	 wS+5q+aRugiYoCwSdE0uu8NNXF5GFSd6SEEKgfdlelQwthV3Hk0Tjqg2p3SzdeabUp
	 kHlCl/fFUv8nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E6D5C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167177588744.26041.7007451224704288018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975d00dcda143e0aef7f6295477f2ed4f24af3cc3e8042d9816a2bc36602417e
Date: Fri, 23 Dec 2022 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671775887
