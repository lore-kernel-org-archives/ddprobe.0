Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343F61D79BE
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749934795; cv=none; b=cPC/462cA9GIgQnkl2mQR6KhG8pSbcYRLMWL+R/uUmoZMKhkefC19u4jRgAHcKY8mcAvRpyQf7T8iEiZhYGMEnbAfxLYFLEKXX0JP2jHKZ6XTZ3Z6v3qu4uZyCRcuGzEWOoW/XB0gWTByzzqyCBj0HDtRa2St41PVAuzaLi5pjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749934795; c=relaxed/simple;
	bh=CHOE9fKgzS+N6EyCw3YyyPT6apO7b7f81tdHn9Fo/3g=;
	h=To:Subject:From:Message-Id:Date; b=pIq8vR6hfQ6sVAZT6v3hdWNGp60HMn8vhTuvIMJHBC+a/4u6O1j5VWrp8mLiDL7kED1XeF9IEFN7KVwrVg34k+EIclLCjF4RXeMBwH1Ns9nzCH1Dj4YVVSXsywup4ta15S+SlRP8ITeWvlaGKNHXhIDYZBiLUt6sVW/AS+YR4Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKhGKMh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKhGKMh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA60C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749934793;
	bh=CHOE9fKgzS+N6EyCw3YyyPT6apO7b7f81tdHn9Fo/3g=;
	h=To:Subject:From:Date:From;
	b=mKhGKMh3YQFArhv9e9NrMTFn/6aPf8QTGcEQuXxDaPE28ddjeFCwPyQfJsbCkmXMi
	 Oqe9Kd2kPDeZ4xEYtLmj8Elsi57QO+ZRy+alFvrE8UZ18RVt/0VTSZh0TJr+OxtFsQ
	 wODl/NItRooupmBaN2YzniAcUZnQdOGPEKcBJiP9jS4uJxs8lksQG47mWUGLOtxNaC
	 7qhklHYs3uj9VIPPxAoUBEMUGM0IXJ78CEzaVrhG3Gd3CRKF29+ox2RLY+hrT8NgpW
	 af0bS79iEma5DpPm7JY8OWCLhWRjsn2DkbZdCv6r2eajXL3unNwyZiFCMY5WPH17GT
	 Z0Gh31L/RaURQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9710BC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174993479358.17448.16443206742471960067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a406e8494ff1d1ea687a17d75567e55c65ad647488d4524a0bf6a813f610c94
Date: Sat, 14 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749934793
