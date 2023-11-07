Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6352F840
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lc1SHTqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F24EC433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699393696;
	bh=C+WMNvACYTOqhFTM3ZB79ARmddQSVZBY5tkrfvoHNyc=;
	h=To:Subject:From:Date:From;
	b=Lc1SHTqK6N3vZ7s20dmqsxZU+ZIfj9DOkXbNchS6nTI1EfiEuwn/4gy6nlxekqBMF
	 U7HRBjoqG95EnccxKbCuKgG+WQ5G3Svc77HR0C3JKIZHUX8xrmAJ+3FtgnYfmXPF24
	 pvVnxYWXm/yd29PBudB57kBR/fin3gtvKFUPiZwk2Sga+86n191Ppy9IAzi8n4MLGq
	 O3897A5fsP5SDFg+aNlAe8B3sRVU+WWvvPdualPAEasR/27hY2J7OTuNWdfu+dH+7/
	 uj0ki9FEiX8LyYzHtr1sNQePtDsqm0LJY+yscWwUTEAFrT7eJx7UzVSC+d5Gg2lbPC
	 ddiaxtst4LCrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 791F9C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169939369648.10473.9288402916187825473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b119f5f9f9c806095f5dc46277631d900bebb974d8215677be733bd47c245d92
Date: Tue, 07 Nov 2023 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699393696
