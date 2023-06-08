Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B401953A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 23:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE301C433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 23:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686267245;
	bh=k7dcLEJ4bMwcI0sSTZKWuBkPDIlZfybE5l1UU2IrLx8=;
	h=To:Subject:From:Date:From;
	b=oz1D6Bt5VhYVEj8RFAiOhrCsSYG6VGstjw0H0beZLsw9VQjIuNTIBIJAwb1G53gNX
	 zlLldpQblPoJBUNX5S8aHp0P076fdcpFcFe2ibso57SdRsRGMcjpm5kZhxDuFj80DZ
	 NafuQ/1/jJx0ZbCX3v/vQplGGr27fP2E1LxFhvnJQLfKR6t3FFdh+odAZ43ChKwBNU
	 3zY6N6RLGXA/XxqZkdDhDlu9gdvNactHSVbmC8VKR4bWswRO7yOjBqwPihRGACSgZr
	 eZPPzGwxfJoP1FLDhNlFM4Lgnj1rA9Y+tWRHmPKZBsBzAwI8LxnBLz5x85DSUx3TA9
	 Uv/CnNjCibJzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12EFC7EE25
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 23:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168626724577.18015.1273868254651584912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8192180bee4cd0ad5dbe081c0561e4b7df868f4936e1559bc8a020dd39b117f2
Date: Thu, 08 Jun 2023 23:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686267245
