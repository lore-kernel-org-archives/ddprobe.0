Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0B386340
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761193794; cv=none; b=VthgalHlxCuy7w6kVoOLpE9Je+ROqTiJ0/uHKKEoxAnyDTZmxcuGFqU5nDgeUir2P3jBIbb6vBBQJAWM4EekfY5Em1+sd4XWTUkXtJ05QsaCnfeQwFEDv4d7x/tftOW/ufbwQ21A+FntLTtSxsYAfNiyfLFDNn/t+jAlz756Fzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761193794; c=relaxed/simple;
	bh=5vGprVBlBQgck7wVH5Oi2OprOUqivNLCH5n2q+9MGg0=;
	h=To:Subject:From:Message-Id:Date; b=bVcFzESD8gjSMXYbz9hfGLQ76KgEQ7LY9zGF7MlvrLebXZ7JF9uJ4yIdfVgu9rLX+xFMSC5vrPjyVc6mTASI1zzUwmNUAlrWVeaWx4HuCrHlS+r8oQrjq3+oS6CISl5jSiM+btvf4Bb1Kpm+OsyiN5ZUlFMXPa724KYZirY/zlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVOmQGjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVOmQGjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0A1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761193793;
	bh=5vGprVBlBQgck7wVH5Oi2OprOUqivNLCH5n2q+9MGg0=;
	h=To:Subject:From:Date:From;
	b=HVOmQGjEYnRaYFjc+rTD6IAho0kLC2PmP86TijgbwpktHrtBqvAn3Q+L8Xwr889cS
	 NOaL+/hQDcaqW1Py6I0hDzr9R7abU9czmu26b9fzochTZ4uUDVhcCh6rXZ1Y3Yx2Ha
	 MYf1XKxkRU4eewuFaHIABaxmeU7dHb0x0rZSWOKEexTkv7APrUd1bpTRbD8pqf4m2E
	 ml959Ee1qDlYQHsl2IIEOgxTX3HzzCkb6fH1srVpWPuiUVdD609oIdT6g6bubgNGKk
	 OvSLP+6sUjAVVzdhhQwQCbtP/qRIov0ypzITYTahqnrP7gWyT8wbXRCDtMw0pZ45MO
	 tH9m0zqrgjPkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951E3CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176119379358.26363.6136652431135229464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828def46d5c49f9b198d0eb671d018bef06e8ddbb03607e757f93078bddee502
Date: Thu, 23 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761193793
