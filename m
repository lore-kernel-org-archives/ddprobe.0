Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250D674C14
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747147794; cv=none; b=HQh+/8wfifSHbQKf0dSiHEEKDwRgAk138azmqe74Woa5ffyO9c2SgZgEFCkMvZpe4SELecp1U9mzjuIBwzxsjwhTAT1WFTefzOhzuTpa9Zd0iGd9Z4L4mWMLrW5fFTfbrDul0FSJE9IrP6O0oXwgG/c8uaOsQk2XVVw8Z0EkBjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747147794; c=relaxed/simple;
	bh=OXxcqgoN9flF8HhBJ3of/dPzDkDHqA8qa06HrItVRoM=;
	h=To:Subject:From:Message-Id:Date; b=G/2EyKL3k8Wr4z9G4X/ZXJ71nRXlot5ZtjOpc7dVmALvC3Raqnk2ZHF2Buolmn2Yxgih6+wWbNKQGF3dCqAQcLxf6BYOrsTjtOxrKNIt+JBFYpEM+1BvCx1DE8ylr3wNOps9/2pxxM9XSigHsujWTLTJVmMaF1wtD+RSGHSAam8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LX9UHSEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LX9UHSEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED71C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747147793;
	bh=OXxcqgoN9flF8HhBJ3of/dPzDkDHqA8qa06HrItVRoM=;
	h=To:Subject:From:Date:From;
	b=LX9UHSElg0DTk0uE983Tq9CEpDwi2FfGa4ZR5C+nx+nlpzVbBpv6EqhJxbJ5vPwgO
	 VsYeZ+/L7Rxhe5tn4peQnbkm502fkuDIxKHl6UoZXAw+lx1r7+MIkRvX9L5zNS0ICE
	 96vnJypRd89wbflxoPJVkECn2SQhXPVtEFpTOx+EH9oyTX5f2TEeJB284dVa5zz9Gs
	 jewkH6XXzjJDwE7s31DVExUk6EULSaJi4KowZqUD5JRfK/0TrY/yOkSNlG3v0FQFUV
	 PLvz26tC1siJdQb5yna3ORcJ05Gu5KyvXwCqob6NP2eDzx3ME6I7YaeDA/XDlqWV68
	 AOyEfRYsthA/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDCCC3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174714779358.14994.17250168417685722610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e187bb8d486940ea10c3d1b495442545a90a829a8310865e2755f13ec5f29a49
Date: Tue, 13 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747147793
