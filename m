Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF22347FDF
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772302493; cv=none; b=tvg+cxFOAWTgfrqo2sqYIE+9nQF6P7TLIEuaXUhsTkgmJMj0Kxw9l6xAWlBKuXzznPB+CjtOxhGR7QiQN8AU8aUxAgCx98Yc7Jen8ehU/gBA/lh6Ef1D7KEZumbB14Rt7fJEZmk5s4N+l6/3LQgQtjbF+ooeXhJuQiDiCP8SQ+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772302493; c=relaxed/simple;
	bh=N6v5jFU0E6s4z2f3iD0kMki2mtm1bAPKIIPPuo2qSkw=;
	h=To:Subject:From:Message-Id:Date; b=a0Ar582hnOgcp7IYr4zBe/3k7SVJn6vaBGyeZ9NgHXGfb1LK9L9bjk0AqUx5axVD9pAQEH2wJn30bl6I6ME2Puo70Sgm3xMMiMpCR4zffk/507uUOEfFCHr7kWbP+Cm9nvO54D5C2h+Iy56ZHlLhKCzG6yjaRlM0gO8NmamfAnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2ZrltDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2ZrltDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCF1C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772302493;
	bh=N6v5jFU0E6s4z2f3iD0kMki2mtm1bAPKIIPPuo2qSkw=;
	h=To:Subject:From:Date:From;
	b=V2ZrltDlNRs6EIiAhmby0JtmFZsNAxXYYfXQ9uUWEUIfTCFdi5CH4L2JnA5XIUrNP
	 UvrWzTyLz/cWVtvRDE1Tzt8kcW5jie6VF1GZYZ+tiXIoWwCYrAdGkTEPsbr7/IIb6/
	 CrF0qcagmr9hJzC5amxCIjYTpy22LqIdgMeHm4KpRgVxcXatGDDVndV6WWgNRmOS3A
	 XCqaPdvryD7q+SrQxYTEDtpJmHAUx4nqfoesP1mLq+hQImeRfSMyULxp2ZpkPC+yTp
	 cV1dqICUHBC0HyfkPDlRCnPrbp7v9mhwc8vghKF+5a0sBOjWjcoj0QufvwfFkNQDs/
	 c0JB7vSlfXfhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90520FEE4F2
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177230249358.20148.6417612771939255957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf52767c48c4448bba5982ceade50f01f362db8c2b08cd3699db6f96819ac1d
Date: Sat, 28 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772302493
