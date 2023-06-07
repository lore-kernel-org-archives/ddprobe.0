Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B8F35B38
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 10:32:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE20EC433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 10:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686133925;
	bh=qaiF5K5S7jZTC9ac/iCp5PRIqeyZzs7uY+/gb2k6wQE=;
	h=To:Subject:From:Date:From;
	b=dmqPJNAUM+IatFNuXqnf7s8Lybo86R80UCVT47VfcniLJ+YLqm60Df4fZqngIGKK2
	 sJHyxM7e/7Okh0RQZSbygR45GrUWuAgpXv4hVsgTakDgERqeuezkhTnoS9yLmlLqcG
	 hZh9Ad8H8StFQelvEhfjuuZbmVDQPgjLRrP4Gd6fjKnbVJPlHCH4tglnvOAM/pDKAb
	 p5KnkIbabSc1n9mQVn/dytLdBIa65GO84ZgzcR8MkwmpgXMbkkolj/LOsa8UmAVo8f
	 V87Ag7Rlhr3roOmqh7Ipin8JIr9VpTCR8w2fAB1nt9Vzr2X7947i4ukQG+EJqureZc
	 Bum4ROAGO/3zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B531AC7EE23
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 10:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168613392573.10177.3431851921834984922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33cd4d55cefa525599ce011a3cdc1256dbef35675fd27374dafac43583e3a5ae
Date: Wed, 07 Jun 2023 10:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686133925
