Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F93E12E5B
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 19:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlDf+eeV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52EDC433CA
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 19:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697052428;
	bh=pSDgH2L5Z0a6sN3fWv/tMkOERNV1OLatKTm4OwOCKDI=;
	h=To:Subject:From:Date:From;
	b=NlDf+eeV5bVt46kXi8pZBMUnj7lBYGSx1foB0QV9px59zn2HQMd5knXJTujpkFkwr
	 Lp3Xu5l0PmKtXESN+vdXvZe/9vzRq1Updju8ogkTB+rhdMBk0qgVvQz6g4XmpQ/XtX
	 Vvtg/TLJS/kJcPPq9mavlwQTlH3KkXsb9TvGjVG63bR6hvuO/x1Td7+IXZP1griOrw
	 DZVFX3QWa2t0AVd1G1Eq5HDl3syc8Mis1xsdDxeoX9oV+bsSUQ2m+wwumJOnavXv4c
	 b4dxK4THUUg8msvpg1KU/OPiD6Izs6eXxwSqHvhCl0fESi5KSyld8UwTP36NMAqYzs
	 vQXnHvOYd/TFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B554CCDB47E
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 19:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169705242872.5871.12152312195248715344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d94b0003a19faa48bea0c67150a1bef580e246396bbf8cb0a102d38b562aeab
Date: Wed, 11 Oct 2023 19:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697052428
