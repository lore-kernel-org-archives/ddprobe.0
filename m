Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193972232A
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vs6xmYNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97C47C433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699901296;
	bh=yk7y6fQ/y1xqn0yr24b8ctPGBo2ycpeDmxHqkvoaDFA=;
	h=To:Subject:From:Date:From;
	b=Vs6xmYNTyIDzI3+trgSPcdzNhpguKLqcCewsIS63Ticqzpqkyirl5HTqOlJV4e3fs
	 vGP6sWK6PJrdP49EEV0O7iL/lQ4YPj9SiF1xtiuXeubXfMBRYqSFWuWdY3CRJqzKym
	 WdXqYZJpK+K9QxPyXVpkoB7O7AD52EhP9Q1PVakBQpHIqihgKSkAF+KVVVa0HMPxmI
	 hbLMN2UyCqs41wF1wrizPDSw+L+8YLyANtegmw6rOCnKENeWpeANXm34RnvWkiH2oJ
	 ykYkvPAD1TqlBBm1YW22YN/oGxaLwnlNjpS2Qi2QmDnqAvMOiFEXgkEvomSjthrERa
	 lksSNVIBTSAqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74830C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169990129646.28684.15763039909508593292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb8605d6d1ca2a5d2218e35b82dd197cfed18890de69054eb829ff9ce0e76b4
Date: Mon, 13 Nov 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699901296
