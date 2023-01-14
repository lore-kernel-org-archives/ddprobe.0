Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 055D862C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90346C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673694087;
	bh=JLwdfGJgcnapHSOTV1ElSZ/f/Pbnrkh6M3FHIC017Q0=;
	h=To:Subject:From:Date:From;
	b=rJHt4bZhR36zq/iaCjGTrxS/8jFhPaJKmEMp1EKa/6WP3OpBVvNEqzidUfTbntfTl
	 Wj9P5yXuMAp0xRRM0I3VRxkeqpEK+D8btZ0AUXt/DVZKFFjVaT8+povPBmvuV8Kp/U
	 UqBr1moKxNmXVxEWAmR0ejanZR24jtgPkcuLFB23gkMsJW0v9jgbaSCdWVjgas6qcL
	 vF0F3Pm48jFawSZ/v+8m9IhtKeKyfbpMxrbal3gmIXF0Z0mp1mBBaO0V7GZZeAQsE4
	 1u32SEMqAJoRgkODHYZMFj7m5zMYh7sO8zuu0no6A0ySathDWildUuJvC+pgo8Ileb
	 OuUY4hs8MZhkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7052EC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167369408740.27034.6544103360056659384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed3f45b1d7532a44b6d11ff04c1f6796ffaaf3489c1917afee35a1e8bf4c9ef
Date: Sat, 14 Jan 2023 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673694087
