Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CC310E3
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 01:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACC7C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 01:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687224128;
	bh=oJ4fk/W6nbVuAQGqUB5diWsd1cN6yiITc0UW/Ogwxj4=;
	h=To:Subject:From:Date:From;
	b=W/O/DDTsl4Oq+F+Us7SkNdgKoOUGu0OZ72F7055AiLfTYb4zi6wp3ZsKXO7UPutFP
	 V5bDnjY/eSyOqNNNR7AU96eUDKHBCM6g2P/jDpXBLz1ika1GzMkDg1gwR9rLyJUvI8
	 N+vB0TfdMM06Exu+YBw0vI8WhsumOj5BCOkoywFjSD4HEQEqFqnyX1xTF5jZ7VZOR9
	 ZzX8Yqo64Qb7kgJV09O8lPnIjgzm/e8yq8Gj/ryZSGVuGffHBuoILiI1I15aR9Xk5U
	 1B4cr/Dbs1Hw0ag1yM/j+tjfodUlW8SsxFwKgnHC4JitiNy+qCClVcdIxccJnVyHIL
	 g/ZVPJxXFizMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB2CEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 01:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168722412869.26708.9019811381993565547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1330dad13f580ad8cfc600f89b217385535e17602a0d2435c9be49dabb9d33c5
Date: Tue, 20 Jun 2023 01:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687224128
