Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB023212
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7863CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670866887;
	bh=hKIvKEKGl6Df7HVsAfkvP9ht2Here0IM64gmYpF5mJs=;
	h=To:Subject:From:Date:From;
	b=SIy8rCn8HQbE7/lMTq+UA3oe3CZx4Ad5YJe/Tqn5X2gkw7+rpOKrxaEtLBeyZXL8X
	 pycaNJRm+/9p+lhYKp3LQekZrQXf4+eqnM++YqWtaLGZkV8SvDSe2ZHmkplSciDEA4
	 y7aITHg0ggeun3+ENFhg+bLGs+qTLsa0dlYYd6yvgfjsMAwnsYl7STbT4IZi9Zx/UL
	 JsRziTUsNW/QFZcHALXQ1oCTl+wH1DV8Tj6MjRvn/XgBBMabAPruo/QLqclm/F9+Os
	 tnlOCNGw90wxkdiuvtqMVrbAz6lyTwPUXDKl7jZduBJuJ/8KQV1rpRnBXmaPJ1Td1Z
	 iC9Jed5wLA0zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60CF2C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167086688738.26343.13653276650209669286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da801ed243c331a6153011e41a43e4713b149f11488718a1fde8ca1f81acf22
Date: Mon, 12 Dec 2022 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670866887
