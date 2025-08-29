Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E7333F3
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756471794; cv=none; b=VdZ7NqrKGb2UAqRGQjef8IKyBVtkbdUzt6sCSqVSaY0KRGAwpfMP7QMganoFjB5Mt7GsOz0DhOBZwxhDfb+bIKdmZ1070DqqEwrg5z5uLjVh7R4ImU1m3irSO/YGaXR7VTkJ/A0y6xe2Z0ZwvwXo3aHDoibYFTpCgYIZ5tcLBe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756471794; c=relaxed/simple;
	bh=vKjWuH3+omHd7bS6igMtL1GCmxYi4pw0VM6LQF9jEUk=;
	h=To:Subject:From:Message-Id:Date; b=m0gucSxK6zSKfLdVcK3nlzsLfO8x4ASET6OYBMnD29Eu4v3bx3CeHptA3gYlKLXUbqN3v9Bm+5MApm3LtUvuqG5Fab/HYv1WY1S9mXFradOsl0Tm9du8frlpmEjPIeUKn5MghM1JPParuMOhebTkIN0wMehyueJsN2Vg+axtFAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Izdn3n4E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Izdn3n4E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FD2C4CEF6
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756471793;
	bh=vKjWuH3+omHd7bS6igMtL1GCmxYi4pw0VM6LQF9jEUk=;
	h=To:Subject:From:Date:From;
	b=Izdn3n4ETACXt6X+tx4MijND8dQsvUrJOzdGALpDbFtjXFYp4JOUliO0SgbfIjJYg
	 PfpmbSHAD9OEUQPvxvC52mFlijqOBG4Wu4wgiRe9Ygvide+KDRcjFQv93EECInhMzG
	 WMhfiNYQU2bXAjmZWTcOvftXFRGviseOkHoZkhJYqYmS7xZtzwwqyYOA42J2pWWt+O
	 XxweVLhtkwiVUtZddmelSwb3L7skbvWlY2mpoyA2w2KqKdUvLvEaKcJ91YTswsurx7
	 euVf2ZIjdzSITNk/BlFkZnMLY7OI1di9N71qiYOQ+nWRbQQkBtcmGl1ZX2fwKDJAAL
	 3atyTqnB974bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAC0CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175647179357.3019.16233621590227081822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adeb6c88297e53f5567cb09cfae1e4f6b0e83f4b5e052cbeace5f904a95131be
Date: Fri, 29 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756471793
