Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE6EFEB27
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AE8CC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672946487;
	bh=1KdcXKg5Du230I/Gn/EcQf5apxiMrYUokxgf1AVLtfg=;
	h=To:Subject:From:Date:From;
	b=O42QfghiZRINsyDBGPbNwp47stjiWhTqpvWBFqGxWOywFdnvRujuLv4+38Q1Pt5/k
	 zr+BRVWw2CqpjDg4zKCVp9QjuEn76l5MRv4MQnIuZe+GkIEDQDmxuT4rS3JIgAy0ha
	 /g96KVLEFx9TivJiB1p+QzdN9P8ZEbTVBLXH0wpkhXzI4YChDAeoNNqqyxKhJqsRuu
	 Ob1Qs3kajMa1rpKSHl7qOh/EXPgAnPrC3Z48uFo5fdahFgSSlQfggrRtmkI9znFmL8
	 opDHuF1u8PcEZZmyfRu6uj3BlrxmDY9YB97ob84ziHLzU5S3iAdiFD4vy/BpNc8G0E
	 4JJN1nJryX1yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B4A9C4708E
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167294648742.12407.16917052756668345709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a540262d116894ef855aab5cde434af9d3dcee5e2bc7dcda1a21cec775a1c9
Date: Thu, 05 Jan 2023 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672946487
