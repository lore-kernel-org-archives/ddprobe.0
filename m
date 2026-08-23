Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3301B3112AB
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787472034; cv=none; b=kGbzWBDisEqIKgrsa/b4AG7nqoCbwu/k7WbkJ3rj2E35twpSOzjx6GbFnz0uDHdpHb5Yw2eTSVxKP8Xd8SOrLHYKjPA4FB6FIwoBCfNzUrJ2Js2b6ugbJMbqBJxx5zGLh/E9wNHXgjBKpoUYRHm6V0OkXvjfE0wg0thloIFy1uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787472034; c=relaxed/simple;
	bh=d8FWdbMGhO9PvuKaQfr/HcOlijchO6t48ALGDcJSPnU=;
	h=To:Subject:From:Message-Id:Date; b=V1ob5U0OwAmsgZsjyjZY+4o2n/5lxQrEvCNT3gDzrXMqNM/zObh9fWyBnIdPbnfYfk3457fWS8xkBDe6BuwSvwFytrPxNw2HvkdIJOotmTqp0C1qkNyQxz5KyqrW4GY+i8G9OdkWZRS4NFh0E673FHowUP5sMANEA7Nr/UeTkQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8FX/DFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8FX/DFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67ABC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787472033;
	bh=d8FWdbMGhO9PvuKaQfr/HcOlijchO6t48ALGDcJSPnU=;
	h=To:Subject:From:Date:From;
	b=a8FX/DFRYenjl8mTgF3kg1qYwGSht4gc8aBDm2BIKlvzf5EwukFcNZ0Oc3lm/J5X/
	 N13kaddv8FFFMEyK1L+LcVU0YcevpthiXzL7VZrCTMXsP/f4zxg3TFjGAWZ/4blRKI
	 ID5PiYHaXxuPWZpxTt1QZaXtZECiZs7PEjoX7vpPRX+QrHNHcYKD/fAm3Po3Mnrik/
	 qC2TbdO1X0ITF5fmM4QE3KcJT1SLtgq+HUUfKzTJTsYAjXK10qrSL2K59SLP3Otdib
	 uuHohTL0w+3g4mZADfcs0NbiH0VPvB4pyMYrGSn7RdySxFY6k3gF2nyeVsoWwrqtrk
	 CP66FsI1JcmyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B278DC5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178747203369.18347.16398980219704929216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89789510621dbd896f3d24d9957a3ad8847e3743fb99045571cafc4729e47058
Date: Sun, 23 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787472033
