Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227A01E8320
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776598654; cv=none; b=oZxHuJPkxONTrK1BwC2oYSWdws4mhchnrl7h84fwfgNl8a5k/cbEPm6ULgZM5fGZ+UpgHDbJfKUNFxOV8FE/7VLQI4/ZosJ2bEwdEhN1nn2JaNy0J4/jzxnElaMOEOyB/AMtWMO6j2vjRn8rq5v2eDM4uK5BZScyXwcEObjv4Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776598654; c=relaxed/simple;
	bh=qr/V3rgprKD5Lq5Yk0Z6OkKMnnq1Ug+ntz6NevCL67g=;
	h=To:Subject:From:Message-Id:Date; b=onZB0g4dfe8HDuVF92JOkIoyKAA4sJkzR54zlsLsD2CZbxfx198hph5SVWBidQ2K0C4six8BP56f6j6JVnpvAdzcOhlzwdApydEyDzXW7AlAoqYPW9+gnswtPwg/OVaITLkJI0MUdI/D7KoUQrdVuIH/dkq68n9CTBXsGAYpMlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=im/BsoGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="im/BsoGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE2CC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776598653;
	bh=qr/V3rgprKD5Lq5Yk0Z6OkKMnnq1Ug+ntz6NevCL67g=;
	h=To:Subject:From:Date:From;
	b=im/BsoGt6KBu5dISPcgX7KoGlZEUg6rbpRODj2UdodlY19iZAQv6AfczgEKW8Yr7a
	 rDvvlERr1j6B/sTb6qSxvCwWO2npyYX/CUx9NH4gsD8cmLsH0GamKR+Dc14L6YH2/H
	 uLDI1mjVdNhkYpv6KC34mDKHvBTM+GzdnPbLHFc+k8vp9yiu/avErRV4sXv5xTV9GC
	 7dsR1ynw1OqYkCH/eP674OVkZ3h1OkxYxMgz1uZ89ND9nozb8i8hQNHkndA4ju9p+u
	 KCwmYyohPQl1bwvoN1PqcdKWCASyzssC5MdOpPymxkp9oXK/6Hd5VFGbmzNbTUH/dF
	 CGop3KqsrkFgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACACCEA718A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177659865368.3030.11929082757338003024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e51f6a5092d95bb8ee35945fc45c5d7750e6d2b77f67ea68007fdbe650d21e
Date: Sun, 19 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776598653
