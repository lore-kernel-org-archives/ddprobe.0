Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E73B3B42E0
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781600794; cv=none; b=l7uR2PMPXcA5J2JAfhIuTMK8wm+D/JGuv5cMTwMDokmubly4l+rjIWgBFdfuohawMBMsguYViEs8Or55ysdMh2MBi0o7bSRPKjY3aEOjOsmwutnIn2r7MEG4btwa/bYIqCktAQeQ9M2uDz6HcIaxlC4HEaHlq9+sxW/Xk4VWmzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781600794; c=relaxed/simple;
	bh=SjAEmXum1GE9KPP8LuX8PyNOjblLyVItawlXHZ4Y/nY=;
	h=To:Subject:From:Message-Id:Date; b=RUE8yEzaO/sto7+bLWiiy1YkpTnFwV3nbMaNeUmXRFRS4ab8yw+1h8CcNdR86UaGZdmHerpGzqyLxr+5J4FPwM8UM4P4wZu9DRwVPZm/HIK7RromZ0fgEpUoA64HNahFEu3bYHCDgFAdopTU/kw0LJtc3wdwEuKt+eTy9YHAqSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4MrSnj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4MrSnj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4FEC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781600793;
	bh=SjAEmXum1GE9KPP8LuX8PyNOjblLyVItawlXHZ4Y/nY=;
	h=To:Subject:From:Date:From;
	b=Q4MrSnj2yN9jZcegzxz+JnQuM7J3m8Xt+P0XT12QKiGloxgyvPmYEQMlXWGKaFKIh
	 Da8yWMaseqr512QcFI/pZI8iJjL8ADifEFk/TlF+GheDIpDvHC4jCOA4Mayu5aS2qU
	 1eYQl210DOB/LsLgaCyrb9XtTT3pKH+3/cqZWbHcx7JcFF8OFca9DiBB2dm6tbonzr
	 jEwkeddI5CMsX03zG1taTFn/WwFn9CLPKYJ1banmmt1Q054nhNkw5uGGIeWSMpwAfy
	 u0/iJJ2aSY7bimDiKpamNDkbhUNt7bbocn0vsWa5CLuH1umRdQk6b0Kp0KcdZAXcXn
	 qz/OKAcPaUqIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9E1CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 09:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178160079375.25291.15061528648271841210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a26e51399a78c9f48d7157fea2d401fe2737e644d650736a4d480c8b4f5462
Date: Tue, 16 Jun 2026 09:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781600793
