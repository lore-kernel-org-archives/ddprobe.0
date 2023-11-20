Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069331BDF8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvBjBXSU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D288C433C8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700502496;
	bh=GVTBx9+hh4xtNo9pd8PqsxrnUH1ANp83mZuRyOBqxHY=;
	h=To:Subject:From:Date:From;
	b=kvBjBXSUU5s2U1DQs7FLVq/LRmPp9VySefTuEFRo0b94jTyHnJuZDIigZ3Pw80C5E
	 Q+fEYPEM70hSx+ygtalHksLOCzr1xNbvZCwOFszjTIKYEUNveq/zCKsYY7cZZJwPZR
	 G8Nec887IJAWiVQzcx6NZdaI6eyHGyY+hWVGZS2KoJ8gmp4ROkl31MB94ATMUnjzN+
	 A5ebvpXGMhFczxE6mfhdty4bLsfbWV+2vtjB2iUWNtbENsFdP/RC6E/G7KPirQzJRr
	 z7I955tbpdiA4hNPoicCEF/EyLFtMqGQjPKQOT/VuxLn4f0HshzMRtWceT7uycY+je
	 ovZoVjeDHWjRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 612E5C197A0
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170050249639.31811.11072974541839257260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b46ebcd120a5c06aced7d875355e8cba3d5f07ccd3e97875522318e065a49673
Date: Mon, 20 Nov 2023 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700502496
