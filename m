Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D878E23AA
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 749A4C433B5
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667801454;
	bh=tCEVhMmXS5X40PCplbGnDAjALJ6jyNmnMNOrYhn7UcM=;
	h=To:Subject:From:Date:From;
	b=ZFoAuSwWV/Tuc7j2sQMWgM09wN/VVejprG+Hibc+0xojJY2HI6oIgKg61zoWkfwYD
	 2MRDX+P8WrNeaQa03ZVpYp3R63ucMvYkCUfI7/WXbm6voFNZn0ADr4Ub5zn0TBgb3G
	 MmxC3qs+E/iWd1l78TyRMxzOjOTLJWJ5CeHzqepBudklVD/YHTyNf19C1ivj6cTgZv
	 AJ467uO7YAJcN0nlonXegvOcuq3ZXpO+nxyl4oiMQIOD7yb31NG3dyJ+0j3xrf5Pp1
	 UHFDF8Savk2Oj0lVs9IEr/7U1DkKDZcrdv0CR0gc3gWVQ7ezrAFvIfLAk6k2Do7fhm
	 TfyCRa5S05gpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 576E4C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166780145434.3700.7404272189942274462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb7ab74ee014b6bf671da2f690f48d3c73fb791c7dbbdc54985aa9bbac100dd
Date: Mon, 07 Nov 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667801454
