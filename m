Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C225F364
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B7F1C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673591487;
	bh=EGIwugDTLbxnIPaOimP6uFqoYJ+iiXJ4OGr7fcq6gqk=;
	h=To:Subject:From:Date:From;
	b=H2ZEeC936KeskRQ7XO3nKZq62Ckb/qA7c17Y8tE+LpdPOcPkE0uVM/LvBRAmxDqcI
	 ZoxEIPr2lOrzKMVED9/+UtuuLuO0KrsNhZrjPbR1rLQe9QcWcaFJgmjZNlOrJdQgXY
	 ssttxcXco0GMFTxwjtTy9D/eD0DDSjXWFbbidCB0UaMhhAHEJaVLyp6sHVxK+M5PaH
	 NQuRqERyc9dKqCgUxHqT4ZlO4IoCol2vqkYs5RAn85ijKbbsZSqG6dpWmQOVx4Zl3V
	 qYnCuzIrwG/as6msOkMK4VeUYs/zBQHDw7SNqtvHoePwVTfOTjS7O0iY1RXK6puemq
	 qsY5Bvp7k0qWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61DB4C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167359148739.20369.9460087965100758332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f461827d70f416d195b9ecd6df9c4190fae7738ca691139a125e12c0d7086d5
Date: Fri, 13 Jan 2023 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673591487
