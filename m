Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5C47B
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71877C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666262453;
	bh=AvmA14fW5s59FO/41YRmeUE0gJORXSyDXGBOP4KDJDk=;
	h=To:Subject:From:Date:From;
	b=vN21j1aFpWrOGzda4LwoY10nN8THE8MtNbt+VjrxBrcS/acODCCZOd6jCe2Eu3qCk
	 TbX42XYp+OYXBmJQ0EtRkIzRRcVqf+UpqW1z+4g5FWGvEOJROO5xTe7JoLI6qtx/99
	 DD+ViG2XNBKeGUHzTgCOs9zVm8r4Tf2WUDLp5zvgi8HKsib5SZ9L4WDZa9jj1c7zCU
	 FuEl67lOcfWoNIH+J/t9Gj7aDZSY6TYOqr/tsceiGJ3dAIyDRhx8L7QjRyy/afY+HB
	 MPSlJJBBxTutwjPaRQ9dafGF3wAJ67dtH2CGLJNAOT0YbnZWLorH0l6NUKpd5a55qQ
	 p56vY/gRZwvdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 556F2C433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166626245334.570.10946905062013576996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed64dac97124d5bb9339bb66ddc2fa78248a47f9307930d98fd96a4a9657c0a
Date: Thu, 20 Oct 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666262453
