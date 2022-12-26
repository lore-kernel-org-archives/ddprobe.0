Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B3F2917
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA91AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672077687;
	bh=7a1ovNqs1QjaxBlp6yVmaCtb+KLPZVq4HbhiIW6W6Nw=;
	h=To:Subject:From:Date:From;
	b=KROppUf3VBK8PyfX/aE7y96AZR10u87NhSpt3zWN8FjqtiYCEZFbfYflqd2OhKAZm
	 JKTGsDLFqcRcJndLpl2bCOE37xuikxL2OULKrJ9KL7zdZ6SLFTbBgL7ed8K3rD1qCd
	 WtxbJN4fJvGgcacnpi331fZ5Rov/FlPjS1TCLxEX0e1JopHGTOVFlyTkILAgK33zjN
	 p+FQGytk//+Vw+Frn9526E7KPInjPAHIqA+xFBCBdCpM4F7xif50MH5TjsHGqhkpMo
	 gA5Ah+QVFwfzM8SawvV2OhzF7efC1XJ+XawnztLZfbqk5iaXO9Pm1qqfghlaJrYO3a
	 u+3zcbqrky4pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F950C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167207768758.28163.13227836823216551441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ec221bf3ff86186a5c43b6ea37f71faa135217bc3d9781db89fa7042d49fec
Date: Mon, 26 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672077687
