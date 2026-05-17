Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3798735F60A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779015634; cv=none; b=tOrV9ubRKrbn9Dlma1R3YcdWbaPqdFZEcqLfJDZHFIcVD9DdJ3HBlrepEnBS7MopVQ5o/u2QYkKaVlRKTGdaaJ+matL3q9xxFSodsaiS9KKEV2ND9ZHRemy4T0nQTukxsFlwrCKDCxzVSpBNg4xTy7MMnd5eWNqOGLuK9T3eplo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779015634; c=relaxed/simple;
	bh=qpMYihPPMtqmHhpP42w2n/wpAgqoPEkR0CFCTdTGFA8=;
	h=To:Subject:From:Message-Id:Date; b=qfQR1067PCPglsc4jaVI8LcQ54GQNADE3ioZkKNbHD8CwDyYByVCK5kPpnG/pFVbVTY+cZu8T/4UKdsMxTtx+vqQ5fW4Bjrhy+Cu6LQW3yw1LSGJdGnIXmgewL1Zl6r1ePW5PhUAqWGgFbWxrGXoRZsoLQjA4V68QboxLBkygLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5q+dAT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5q+dAT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C56ADC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779015633;
	bh=qpMYihPPMtqmHhpP42w2n/wpAgqoPEkR0CFCTdTGFA8=;
	h=To:Subject:From:Date:From;
	b=b5q+dAT48s6dP6TcpIp5tmi0RpHjHjXOKHfJzUTzmVo4Qh7hpTtqgaYpFM+6TvX6g
	 0KgndOnKDeUYCFRp6uuqbfn4RNdhQFKMOhiAaWGA6jl1l1DhLiZk3IIy13v/x4fqqx
	 NbLfvae/fGqOX7hsjPhfPYj3YaN3y4x/lSojNGT2KhoKlSHUb7W9hVwj5HZ/fAaE8Z
	 9MT493G7Fxg+b2hHH+K9zsdo9tlEyXJcIAlNAufrqJMEY34kPmnGg2Ug1UPvL8CCkX
	 texwgfx/vZypozBfYpx45yzc2OU1WcQxA4Hwx+qQmKG5vl3Ljw7QiniMVuc4puU10C
	 rXJSXzlyKKbxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B019DCD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177901563369.3544.1480677571067243170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7c7962d88ce572ef829493fddb15e7504d9e35a53e38432802c988b2b75311
Date: Sun, 17 May 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779015633
