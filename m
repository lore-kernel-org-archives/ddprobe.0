Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77131C2D9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 15:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2129C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 15:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687965188;
	bh=fK3FObMju4nO/71r1mbwDoXCKFyIVR3qTCKlNIOtfcE=;
	h=To:Subject:From:Date:From;
	b=BOjLGH19xpxVQ0VXy4U1VM8m0tg3XYWHA+kt1V6f2+6I7qR0c9JFExlxB6nNkEeiY
	 u/1mmMao2bJ5LQI7i1RKP6LAGEzhI5oAErqBGWR7nclglnIJjRyDlfJmq72CwBso6h
	 Hyy/m7HaAOGKaJw/acAkx3jFuiiYM1x9gDLFbDnmyojmvgJo9pPx8nDimk8vQUh2mZ
	 dHJ19HDUvFmW/JfeR3th22kRFeTp4UcdpfXUkRf4bDkwe0NYPIiQE2LqYKH2uBLX1m
	 FQffayUF7RxHnU8OA995HpHJaFNi+7qH1ZCsVvKv6e1W8k3yDhmIbBLa3SXACiSUDS
	 nPH7wxuaneEFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5417EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 15:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168796518873.3988.15892062506051171600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 578c665cdf1457801e07606a6c6bec601e0ad4689b8b49c2449b8227092848fa
Date: Wed, 28 Jun 2023 15:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687965188
