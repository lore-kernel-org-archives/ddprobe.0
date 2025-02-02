Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF47156885
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738500354; cv=none; b=kAXNLMFZyZvbcShL/GHruDiXd1pbhNn9Y42TKnBa+h8/bXym+TC6j5epN8SAxlpy15wk/g1d+uQFiZHg0jDTVho6EUJU0hZzc/f3sqIv0ccJUjAqv6d3C+pNhOrnV+F1oVKi8KxrJSDYODT6nw103cPZB8zywgiMM5Vj9eCgnQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738500354; c=relaxed/simple;
	bh=W/kUMNwnJgOQMhm+i9p4Sy6BKVRi3f+L85YbjrI68I0=;
	h=To:Subject:From:Message-Id:Date; b=a2xBRow8uy+n/PvjfX4fE1VOXLs+vSMkOG1qXNRbQuKF5lqPC74IBdIAnOw4TGO/xrA0spQIq5GZqWMvPpelOo6QFnyJ5Aw/RciC3cQb6kywerh6cobBzt8Y26Tg2zeGCaICd1u/rgCNxXX/GDDJU+ILsbJStvZRKUv2LwQqaLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcDb/AW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcDb/AW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF482C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738500353;
	bh=W/kUMNwnJgOQMhm+i9p4Sy6BKVRi3f+L85YbjrI68I0=;
	h=To:Subject:From:Date:From;
	b=YcDb/AW1TrUYsNAi0TzMzfcmTyk8rMgIhPfyONfRb2KHq/Csp12AW7ytF8khbVOuX
	 IMxl6gMay3zPh2ZWNiAs+FFWV0b21Il/WNojrylaT7ZxRbGifQbCH+ImXryt14rZ1z
	 gH8ghdZ59MS4waCkgfMOJvdh0fx2YB/A/Q/E+KPngEKQTuDZHFaOPpidyTVbUN5/zu
	 byoUgJnrfpWj2vCNBnW6ywXV+KWi1z4ERfnScfrpe+UFMFPX1V2Zwye4APWyCiGAuo
	 zFIGKbjD9pE7UR9ZKDzDvWuOYbhIYdlMFPQV6GQZRpY+oOExIpgRMcMCPOvvbIH8VG
	 577eSgDldW9UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C300C02193
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173850035358.27334.374300171916983665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974d0c25c5bc771beeacd9354825202f74ff738f52a40fd2f1243f1b2330e54c
Date: Sun, 02 Feb 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738500353
