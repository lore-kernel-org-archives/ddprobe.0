Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2864E2594BD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756598394; cv=none; b=RMJAwLpel6D/qNcB4UBELD9sWZNL8nbFkrQZOIDCf4xZ/dKRgIK9GDRVSx5eQQMSNqMSCKx9S7s2W9yBZhWJjysYSs8LKfwU1gfszHZkFpkMO12452JpWAN2dohePVDhiuwgUGhB5hmaQBdw75W3GR6L2PNOfgZZdxv7b8UYy+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756598394; c=relaxed/simple;
	bh=VCiEz9PqYcTr63Rh01tWgibqaJcTAZGOFVG6kHyuO/I=;
	h=To:Subject:From:Message-Id:Date; b=pUUoS3IgdVurNF/xlqYWCW9kMpAEj+exgYOAXRIpsYu1tO03ZYFcB4RitNSE717AvmLkWDkg40+llz19nMZpi7VWUrbhxLo5+WA5CD28/I/ZLffjAFPf89oHBMCKeFkVHveZ+vx11fcmrvwC1WzHoDQB8NTndqsWQe8iWLl5pa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJDvYeZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJDvYeZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6E1C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756598393;
	bh=VCiEz9PqYcTr63Rh01tWgibqaJcTAZGOFVG6kHyuO/I=;
	h=To:Subject:From:Date:From;
	b=TJDvYeZhDeonicdK7gdkV+Q6fSIT8k0LXc3p32JxN/g4ld8UtvrGv9OJhFxRrvvRS
	 teDP9xZdc6nkBOIux47tesHq+yY3jcWloEBiK80t00ueg+cO4T0SGaTD7qnF3jg1Sa
	 vVEDLsnIZrAUed3ZWNffM0K9jnMKjqAFxNrQ+1oD9XmrwU13WNOa387cDJAXM8VQil
	 p4kJl8DBXyPXstvU9p6OLjKp+oG+qJPwGVI3/vNKlOgFmuLgKXZxfr5MAJhlgiN4ZF
	 k4984uHpExoEpYkJlPkg0cT+TSpBOlj6HStBh0eXpb4KPlMYCg8sDPxmKT23lRWgSk
	 552BZf6331dWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E18BCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175659839357.29763.12475228016275205872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6ea8b464590ac3ee3fd436686841e24474e1e8949d33e39a6b570916eed5438
Date: Sat, 30 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756598393
