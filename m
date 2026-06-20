Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4178354654
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781940394; cv=none; b=rhE/TAKSBmm2bf9O9e088p96LrAyaqu9NbHKsj2cMO4BVLd/+jE9QdSdbtcPsWPgOBZDvKq8chY5SAlJ6QZltLWu3yu/B/xqjSC9Mm3Su5CaWlRHZplVZEYfEEIcRFm3xjqP1y2Ahx2Ci/HYMN7HLGLM1rS4xsFqDWuS2O3mySo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781940394; c=relaxed/simple;
	bh=fe2MJmPkDUD8DWOjoT12aO8UqienGFHlmqquKhtlXH8=;
	h=To:Subject:From:Message-Id:Date; b=DKnwlu6YaxIBDU5QbGYnT7fMieB4up56adGYajxS3RqZsHL278P9x9fRj/GwQ/xS5vJxN8YfKOLKVuDRPWci9PHtUJ7No2FaOcYPiYhO5mYUJI2i6F5Zlq2FyuUc7P1WJnW0i2lr6MNSv3z9e87uog5ZZRi+XVr/Uhfx2H4Z1cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dm6wbd+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dm6wbd+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91B2C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781940393;
	bh=fe2MJmPkDUD8DWOjoT12aO8UqienGFHlmqquKhtlXH8=;
	h=To:Subject:From:Date:From;
	b=dm6wbd+brW7udOYAZGlQq3FU2SqRuNbB7+YESWcjFgluAZh6DXCdnViBI0mrJsQTO
	 U4vt5b2FyVdoB7ZKNOK5/AcUifeRiJzbCHJQ95TemLnpQKWICn+f5Hj0J+cTSi8OQO
	 K0WobIDbmnd4XIiVBj7e8A9BJ4eNzgVdksWPTlH3H9Cl87CZ2EhczLXHUaqiz/vuFW
	 xL7dlv5qs2Hlm3FOAAtwRnjqoP5/FhE5VpdzHg3qnMjFNU7CtX9BOgenrfDTLtk//d
	 veDI0rOP1Er/d4uDZRmDkZxnDUH7niCnjxEkY1O3xmYF6DQuNyuVOA4O7oFYLAa1kS
	 X8TTrA7GiAKiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6ECFCD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178194039369.27662.1980917325869660629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adddadf19c8ac384c09c9e3be3b97e7bde2c69161ed05741669b9c9d51105bf5
Date: Sat, 20 Jun 2026 07:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781940393
