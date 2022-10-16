Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0DAE7F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76828C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665941453;
	bh=bDy9CgIW/GP4YHiaQsQbHWPVVf12kFEnytj/SfK1tqk=;
	h=To:Subject:From:Date:From;
	b=AQVdPbPLTFS/3OBT0x9tKljImYigLgwyPdT5U5swTv43ejjSMR4t9vbAQ3NUsoNPk
	 hSjXZdGjQ6LUFqotqnQvBEOKM2D0do3zw+iinldneQNzRBGOsDKEh6U2JlJbE8QdOD
	 Mxvg03JyLvW4aEDNi+oTLgaO3lTAg3e7TcDdcC+RvAt5ePSLvyCDY1z9cqrnQYhtf8
	 5CQnk58Wzt/crXR796Mm7u3mjoGsBC1du6l0ZZlx2OFvWj9b7O2PRm2omeGE4OvJn/
	 TAP/aNwjed1ekfmD7U0O94YhAg/AKXUrjyDADH0hnMM66wi55NS2vN6SNWAG5ItvGP
	 VMBGDDTxkvu5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C0C0C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166594145336.22554.4070151941820542835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff7014013b1610972ed334d434dd66025d3c79fb71e96495bfcda7f27f34347
Date: Sun, 16 Oct 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665941453
