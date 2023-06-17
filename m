Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7127FA
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 09:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5127C433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 09:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686995348;
	bh=T/m2/QQ8/x0WR/eTs0OHxzTaobI4zyAcO4+dCWV6Z4c=;
	h=To:Subject:From:Date:From;
	b=ZCmp+qZoZMb02NfFYofpjKPQVsizbV7Nd5nMzJSttqmfDCUAQ8QsJYUb+5aCDhAIi
	 38g0fAQ1OIRfbSnPFNhVf8ZU3EMakySr0gUx03PCKn5cyguDQqq/Rw/VeHSYPNOIXV
	 4q0omb2UUY6k60xTOPFsde5cMp8FRUCYjvFXrlgb8MP6ySWpvtwrZ9dRsqxPIlv5Zf
	 t2lGS77CCeuEoivvRZdcnNE4TjBQFsAhgHEDxulas2C1PE7ob0HM+PiZcgDkT6nwdv
	 MoXMjFLdgbmqzZl2r3zmCczoGd27iUAp7rcqKCRLrU2mT5aUjXUJd3/wY/EwYtbIc0
	 PbD5jByFuU9nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA667EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 09:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168699534868.26754.660644966177576519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9c50dd922f579b920d2d4e0affe7bcd3979703c717c9e43eb2ec241a752d0c
Date: Sat, 17 Jun 2023 09:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686995348
