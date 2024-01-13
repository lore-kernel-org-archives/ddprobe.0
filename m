Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF2A4400
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEfID9qX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9965DC433F1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705160296;
	bh=nw6igcTl1rsf0+PsL6/gFLG4qUlsgjrYNjmiVzHkd1g=;
	h=To:Subject:From:Date:From;
	b=HEfID9qXsLRq4Xu7gP7Go9nPaKbvVFUX9n3vowz4yOHtXaVKK9ZCM03c7viHb8VMb
	 +MPOqzqYMsGdE/GkURt1iZi1qTT6DPCkmE2fK5Uo/t3DQAQ+zHbb5yFF8SOv75IX0u
	 87z9y/hohseOL/TAWxRAOFHjwTetLCF1bgUxlwJdFysVwOZybl7U5Hn4Rppu/uBIen
	 47JZCJBQ8N8ohEPQCvVVpKR4sVXhfwiu7nVvVfiTu/pkuNlZ0sPTM1bX3Fk4vpYjk1
	 BOeOugA+ugHL7AxgV0ahKFfC3zgsifs2Govg0h6MgY3AwvA+mAvyITzI6yBS7QJHm1
	 3xVhuoOK/YE+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A488C4707B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170516029645.23402.6199550430078274731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e9f21454d7b79ef620bf55b3248360add2915b6aaecab549953c9fa571b1032
Date: Sat, 13 Jan 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705160296
