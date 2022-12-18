Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F35282CAB
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9723FC433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671390087;
	bh=dkEA8u8QETodUvfcamxJ7I9gyHLOA5XJlq4rXJpQd/I=;
	h=To:Subject:From:Date:From;
	b=aEmOtSJ/WBBueXhobkrIF412ZLVzwNYbMM9CNcuBnOfO4QTeApIbTj8HD2cl1nQz7
	 3xpcdSpIniiEH7UbZpFZxS6gc9DlSO6huhMIhBcVloXhU5I/+UF/zmLqcarn6mXL9+
	 /cLbgIYr7ofFoPLLeOlc5/uzTV7LOqSv71rl2KjKO3oTp59ieYtay/NZQmln6HmytD
	 bQ42s8h0aXIg6mABljnLb8YrNnlBaxNbt+tLi+ftyLao9DGJysKYluoOFocfRoFNCC
	 Y02Rp8rTYrcBkQLeyWnIF6ott9TKd0g9xIRLFigdLoIZs1ps/lT2imLmMyc+CjHrQG
	 D1LFv2UCkHT1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 742E3C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167139008746.8685.10964591328860031807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a97e593107b2576cd865c064b08774c592e976a42eab017891110faabfe035
Date: Sun, 18 Dec 2022 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671390087
