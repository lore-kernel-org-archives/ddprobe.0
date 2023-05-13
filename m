Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6A82583
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 19:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA60FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 19:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684006086;
	bh=XlAAnSwwXEanSTFd1vP5PDIvKdiu1FLdoSy0chniL5Y=;
	h=To:Subject:From:Date:From;
	b=Ogf3zt4EoX66FsO9I9XR66oU+PClOappbNKHTn8kVztEqLevZawKHnXnOiniomk+p
	 sK9+bB31BLgPek9xhVrBKjAPuO6V3rZvvVZS2nhfGBw+IVsZGhpueNLuNYtrceM3oe
	 kphXzZn11foKW7WhEs9KVK4IZJwRg1slxuSGGiIGG3Zq80uMPVTt9xo2MJ6PPFeV+z
	 Ne7JUaIeIV1jVgxihxCBkN2w7O8+v9mNg8KGocftYg8j2FEZOD6VlvaIOsssf1jGVY
	 W7FTFoFtcpQ+hkDl7Qeh8agbUej9KtLwGM3bi5ziRzNvTMvPBm2MtBW12jf4DS/fWd
	 oq5gjXumfkTKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F94C77B7D
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 19:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168400608581.11187.6910295091677860714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98be545180e1d4535ea02336d1fa0f7ac1e1c3fc4c73334fedeed628cc1cd2da
Date: Sat, 13 May 2023 19:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684006085
