Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48FD185D
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D4DEC433F0
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671588087;
	bh=hRbD5vJiF5ohSifqtHDeT9hQ2JxYNE2PZhgXgcsjIo4=;
	h=To:Subject:From:Date:From;
	b=ThNeG3y4FpbMdAeYI0xy736lXCtf6z8M3A/4h0Om6N7A5SEJiti3bP0sDXIuEZB+W
	 /SDGQ4YseZV3hPq/wOtqgXLAG8wSIgiWET7NWc//5FsttB7ssri7z6Adp32hYjq/lv
	 pRtfizronPNx2h80ZHoJVzUUu5Ceb0PBezSjIInCUD2Mp56sraIIiqlxG8T1Ay19Ve
	 unEqZEkREc7VBZDVjbcVbANaOWWHXF2dnceL87xKYmaAyitz0J5y/B4amZ9vXS+XkE
	 GAntkhwVyyGlA86aIcSpCKT0BN1/6Yb7mKc3e+PnfNkbkYZd1zj0uqPYjxkWM8HlQ7
	 Asr2ZEd3fZMLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61906C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167158808739.16734.13876700223577917424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea2d0e7ea94dcef3e91658036ea5247c022d35e5187ad623645d5aa9b6711e82
Date: Wed, 21 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671588087
