Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C593185C
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mbl+rrvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CE85C433C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698200296;
	bh=3splxKq6jzw0LV2kzFWr9Y+xBgU/iQyMkpJUXELKXIo=;
	h=To:Subject:From:Date:From;
	b=Mbl+rrvRQnf2kZcUnOhblOdOI9FmV5nSwV+d8PSU/QJLGAd/VFr67uX5K5rbSK8Pv
	 H0l6m1inUi4acQ/avT661MJUxEVVP5etT7g0doL4Jsma8gDwfJfVy8vOkMS7S654rf
	 WSh/g/durTrKomBFZNkasglN8+sIDdDJF7OHFUZfX14+wu/wBgM8oK7HNXfpNOnirX
	 9qW5MxX1fobQBCwFNBmaNoT/Ri4DvMnX97ml2aGfjB32DB5WqzPzaVN6uiV6OmPCQ0
	 cVo3ABWsH0xPB7kqc9Wr5MQ9Tq3tct8FIAPV+HbFDTsfZBtMUC7AKAISZnqaunowKK
	 Tqzx3V3r5ue3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65434C07545
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169820029639.29946.16668655320585384417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558808cceb2d1f0dfbc7368fc79e33ea9db2e0a3bb5567a6c7a85c9ac63a70c7
Date: Wed, 25 Oct 2023 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698200296
