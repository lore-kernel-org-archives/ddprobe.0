Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD8A192B70
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737738354; cv=none; b=UjZttwMhg+EOxgT3dZbHqWUUdvQRLGrRdn4DYHLfiP6I7rrErHzMxa4mxBZwNAEfvRWWOD+GaZNnXAWJFwUMsKIJMLf8Cm/BiBE/Al1vsJKnjvi1UYxlxu4vRtmx7Kg/5NWzlQrJJeek4fJ1fmLt//Nv7o3GIh+5ANwBVfoRl9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737738354; c=relaxed/simple;
	bh=Cb2WIlYMscSkJUOTh46vatAU/7FXfRzFTXamk2byvQs=;
	h=To:Subject:From:Message-Id:Date; b=XGBHnM+p6LvXCLvsEZCFtA9SoaPdOszVZy7No4OqBfRNZSUjO8vJTvQzzkmpseAfgn7ggGLqF0lncOWHa2qwc+mv09EHCve0YfF1YPvRLFHtrpelOsXNZtX0ICHH2NJHkwkV9Taw+bRhTj/TLQ9rPAgX3eCkb8XPn5spONTruto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqmgaXgc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqmgaXgc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C63C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737738353;
	bh=Cb2WIlYMscSkJUOTh46vatAU/7FXfRzFTXamk2byvQs=;
	h=To:Subject:From:Date:From;
	b=kqmgaXgccVIAtTJbwF+k6/X4U7vBmTa5ksCZwJZNV1PFMsoljGXJkiLcAmu5kprSR
	 JdSbIXB41KX378tqU6ps2koG9LXODZU1IF0p0GmQYM2XamHe3EBBZJWswUReJ76SJy
	 TleaYXnneFfGXIZ2E9/syX55JQ9geEnjHrPElBTz/ecs8c0X8iHFaQ75RDTgZNcbzl
	 14ReTgxlQJ5mlp8cQjwWPsmviUEVYUZitBhXJCC/paLGm+TFWd98otYDcdPWPod7yn
	 IdroQBccWA10NR+UaILrWlu7oFTq8yPGloTqSmkQC41j0WWbVq4B/7MwnzsXYoZq3s
	 6zWMZSXPktt+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92462C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173773835359.19024.10925293617620098035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: badb032853a4fc7a5368bfe55c5fed818505fae76a18900a3545bf565942c8af
Date: Fri, 24 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737738353
