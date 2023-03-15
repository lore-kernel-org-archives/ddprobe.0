Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC5F360
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 06:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D21F9C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 06:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678862405;
	bh=OCD2ZXW8p321IXzy4+VzyghbLmnjHBP5S+Odk6nTqUI=;
	h=To:Subject:From:Date:From;
	b=aHA6sV9ZwlAR7RXf15px0xQT/8Jm0AwrKviWLvUC00nV4L3CuJg4KoZkJLCByAZ4u
	 mnakW7qkGW2LZ9t+Dkg3z9tDauqAXvzEXYK889t8qb9kKfFhmk3UXWUwxDQlRgTf8V
	 nmA49fzNYEcg04xLuEzW2csl8UDzne0fS2U4dv0AtuXUt3RkbFL4YJNklAN9yjRQF+
	 MJlcu8+1cw86oK2KOju/pNy21q450bpC/U2gTqwtYXvm4KQJ2gaOT9W6KmC2Nf/pmf
	 wLT5+w9NVQVHUJzb3z48xExfDNk+35+G1SC1t9+ItCtaDZKklqw5MM9O90SWWgY2e0
	 XJj9qf99Rvl/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F52C6FD1D
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 06:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167886240573.15652.14971669151178558404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af338da32c9a0bfbf9c5f5b1af3923cb261956b63b0cf398bba9e63c0ee3e21
Date: Wed, 15 Mar 2023 06:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678862405
