Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5198A2AB58
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 15:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMJ2PJR/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE1CC433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 15:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697471228;
	bh=pL6wUJd4kaf7Dmas1eXa2UoY2TGeJ7hJqQaAPdXxhx4=;
	h=To:Subject:From:Date:From;
	b=KMJ2PJR/PBbw50jdYGzfVEN9/RaUZTx6CekWW1CX45ck732FryACOCzjJpIvdTpIQ
	 cYeBhJ1dUubSuBVG2A20Om0W9HIbegowJjfYBHMi2EEhYHNZYuUMzhUwr02uE/c1Dl
	 +TC9UVqiZxELblE5JhIGlJCeI1EvIku7myQbUqxcOita3+rG+k66A8Rt1PxWBcDi1A
	 v1yBLSm4G4i8KnQc2oVFtyIslCISh8GA8ou6OAcaB7XAvY366r7Tt2/rgACsx6Ncns
	 j84yI/ZVnORdjGBaDrKDifA+da4VJupLCAdGQP32n1ICL8hgjBAu+aZPd/jwc+lMwW
	 qppLBchXGxIqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A39CBCDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 15:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169747122866.31475.8108462771676995705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65374bc46d5c9fbaeabb9a7b6612c4b745e6b96c32580ab878b55b2e1e75c57a
Date: Mon, 16 Oct 2023 15:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697471228
