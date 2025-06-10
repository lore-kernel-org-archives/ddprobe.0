Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E99239E9C
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749574795; cv=none; b=gXJ5lMS82hdyTa0SWdyhIdoJN+F2Y1bYtU0FCaTETT18yhdDaPbRxzOAm7115WzTwjKso1vzZPHyi+oo/UMEM2FG8ib2f1XdqN8hil3rltkngjtNXbQB9hMy1oqEmIK+lkI24PDbz51jPydICI9ts1CLOHMz8VXXW3Ae0+/v2tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749574795; c=relaxed/simple;
	bh=tOocAd3YjqazJZURKFruVmvoyKE/7Fc/jAj/Ox8FrVQ=;
	h=To:Subject:From:Message-Id:Date; b=Ctxiw4o37dFAFo5H8AhORtBiQ1AUGpD3+QokMdJB1KWNlCvaMYBhSVPSPdsZCDn3GrdK1RQ2YpGgywuMQ7d+Gd6IlevfUjfF7J6K1ytjWTiX1LxDiOQh/QASxs7g4FHOoPA59koffjtZ82f4+/XwmC7MrIMJ1V+ZaumNXnoaxUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJ9ueHfR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJ9ueHfR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D2FC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749574793;
	bh=tOocAd3YjqazJZURKFruVmvoyKE/7Fc/jAj/Ox8FrVQ=;
	h=To:Subject:From:Date:From;
	b=kJ9ueHfRTlHSvmI8mT7MGV+bmvZgS0qQ2An0UKz9izX9LdoxGtA8QwdIN7z3xfJpQ
	 xrMqxv5iE0bdHGgcoEhaU7gUGuZ0BT6eJrruJkw5ckcV3ZAJdJsBENh1D3qe5uTHMY
	 /QH0i/T/ZvMMf3n97WldH5F6JHenMKTXkICTRDeqdn4MakfS50aARNNx/fSZ7p59H0
	 fxgUbkI2Y2wS8XjzDycACvPgrd2+jf+m5Bm1pSAkFznLMYVLC/fyhOsP5m3ioLY8+1
	 AilMWDyCwXDtJGUAxrClc/lyDWSTLp+SqzbVWLmjnpqyqZEsT5cEarxgYWhLunZz9c
	 AG0ZlX5/zQZVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E740C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174957479357.16050.12562158481462447610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1afeb063162344b2d307060c82a03b301623c33f33423654eb17e25ec4bd2ee7
Date: Tue, 10 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749574793
