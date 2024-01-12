Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8E75732D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="off0Yd0K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A766C433F1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705051096;
	bh=hULJkwUfmQk32JOwtzwDyALM3xtlp0Qe+LHP1loFP9Q=;
	h=To:Subject:From:Date:From;
	b=off0Yd0KPp9uZUbETJUCq2qdaQM575qoSQWybc22fDFW7XfOK+xe+pk7elEkhOtYy
	 bc4maVv+Qz2KLikk7Zld1RF+MC2hBKUqrGwQYns/0LjJd9dMuw1YzNBa1Go6vzh40Z
	 zD61MXltW1jJLgjqBRd0fojwA/9GQspNhkSJ3YKRq67VmIjKcyMVNK9hBE8kWl8q2z
	 xIKS8dTbTX3l3GjxljSeZexHwwW4XN9VWnuKpICjUrTTSWwOIsS+TFDz2NwK5zvUBG
	 YVtpL60cbSOoXGZ9/6b5ZwqKGliutkb6TKCd9I9+OcFe10vLm5IUL55nqpB1/V21Ux
	 2VPeUXOSftm7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 702AAC4707C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170505109644.21325.10035514154326745015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21885b15eb14d8de979578ff1ce798cc0e50c0ffe1126321d021e272f1c1e6b
Date: Fri, 12 Jan 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705051096
