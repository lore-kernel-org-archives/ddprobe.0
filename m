Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0CE280336
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774636494; cv=none; b=CvvmR5vfOT2Sp746hzYmkUoH7ARBcYOhPbcybuHc/wV5gMCu8wWpzDGzp/HLXIvQwth/Tm4bSu5EOH6r4pDuaS0wEc/WmX4sZD+s6k7rAZjH0/QdOk3pQYygSAouJhybdw5GEtKta/Hce0Di9YywdcPvsifXd/40pisGANgtNG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774636494; c=relaxed/simple;
	bh=OjP6YmpFXgLzKo2nuooeA4/lw5KkoBn4srfyqg5uqTI=;
	h=To:Subject:From:Message-Id:Date; b=B8EZFdnTrnOctVmGk665ZmUt2nY4AWrLEbIzea6mCPdlgoNa213NAeoKTnOHlFVsIajbB+9x0qClnE0Kxt57uCxGsDvPf8Y6j7Lespo0serVObxYLCR8AN1/AC14rvka472oa6nUPU/bOISnojt3vqvPOIBsrYe4gWbsRkFBdQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcnKJKfp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcnKJKfp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3402C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774636493;
	bh=OjP6YmpFXgLzKo2nuooeA4/lw5KkoBn4srfyqg5uqTI=;
	h=To:Subject:From:Date:From;
	b=LcnKJKfppxvgJ1YjlngSoCIxJh6ULXJNvJH4EgGOa0XTNfsT3lrJ7rCqcUZhGZ0to
	 Bp/NynRH5k6TzA62uj7xRioWKn7OTZM2rQs7F/kb5N4eK9YNe7tdUAhplI6xyfdzrz
	 8L+Th/clzmz3cgAcZD0+z9Ts/X0kVXyi1jusQax6XcYWAvkpj8hzE9vp7v+5zGNTXo
	 +QanAItqr1sXnZ0y1SakUev8EBgQcRz13R8Hh2cFwVu9CDTVqxU1XjtAauPAStqTsG
	 sEzo6l1LvlhK74cE3iWcmDbTsLCv7kPEFBqXOPOYCsOoWb2Uffpi4VHEmnFWPGjSoJ
	 8TK//czBgsrSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A021910F2867
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177463649364.19428.14379301274141847189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac4f055b73c8df9d1fa525664a75c7a4e45c06d0bd2a8f709083e104d80f9f5
Date: Fri, 27 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774636493
