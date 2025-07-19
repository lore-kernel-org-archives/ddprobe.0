Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315C8881E
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752912594; cv=none; b=UrOtMmyQCnxMSC5rHUxh0iQ4ormTgAI1Z3t8jaOGwCu11e0NejPN5KnZvg/wmV8D0q/hHe3IWgMWd6glbYI+j7H6AI1DwPTUhNaJ3d/fGX1Vdt6LjfNPXaL9S70aUEjo5VS735+RTJSdPCOhP1LvFnRxG8g0+WfBmHrSfnHWSY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752912594; c=relaxed/simple;
	bh=YA+YTa81+09lGBJccaWrXDlsbZNlkMn2G51kwvQTNvQ=;
	h=To:Subject:From:Message-Id:Date; b=LOw/8nwZzzOh4gLnHSRNHQbd2DO1OHkJA2y744SFOtM1jytpdvPmkpTdiJceme5WLREF7ZRBT+5HN+pVAOd2M5vgQV0vOUDjwElEkZUidDhROxDwrIZKme255TbplIAn543vTxfa/eFV9dhWsNaqR5UhWA8mUbE/jU5GHlUIllQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEbC6tEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEbC6tEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4620C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752912593;
	bh=YA+YTa81+09lGBJccaWrXDlsbZNlkMn2G51kwvQTNvQ=;
	h=To:Subject:From:Date:From;
	b=aEbC6tEZoG9bYDF81Or+fdhZPp7h+8lU9AdFuZnG9PE7YzPXEDvk6smfuhDl3ih2I
	 ViM0aun0oGxBTDs/PMxDS2IJzFQMzJPoZ+N00d4+3nrEMkA7eDegUb/lr7E9+B0H5g
	 +fNr43j0WDvrZH3YvrB/WpJLZ/A/39V57p7wrEdkd01YUfPfzeppKwO+0LcP+KbKvg
	 FRgGYhIyUsAyOvzYoP9ekvzEHb4EmAN6kOhn9mbBpzw6dmMYFPYICoj1LeebKk/M7z
	 Ic+pbM7IH4YICvnrWlJe25Lorz/f28Gh2XhQWEv6zX8ouLLi7wpn0tF/z9NDOQGkSS
	 WfXak7mabxEbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E49C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175291259357.30485.5798480099184259447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a169057a1c1dabe0d75f594c64afb722b40dabead947838f5a068591a19a7193
Date: Sat, 19 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752912593
