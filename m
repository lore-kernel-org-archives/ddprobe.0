Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494EA15BE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 03:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40F5C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 03:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687317188;
	bh=VWnDbmkg0uhmFEfF/k+U4jebmRJsuNbug+oeKvMk1pI=;
	h=To:Subject:From:Date:From;
	b=pqiPTSAbpNuLfEuhhGldauWq5cIuNyJRkyX1f82THuCHCPEuvLIrx07mvk5J/59gC
	 FcRAcv4EIrKJN3NSDY7/67UGbtWWl19LjZx8eTu2zlOCsDa5NBoVmmji2KTKGb4p3v
	 2+7AttZgPsHP7//7c3yp2y2aDclpwZCKw5G9Jjaj26ogAXJ0Fa+ZjEBDzys2yPvOIi
	 9D86YC+rS63ncXTt+NdNyUsEu1Wk6u9j5QRmyZL7srE1EzhBEBajs12Rpzkt4II6ae
	 kF/WYNP9vl8ijiFsCfxd54ejNiBdlR0Qc7QR7OSX5znFZSQUv6ZXvR7/4V4J2d5tkr
	 tId55H8GAbqfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA44FEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 03:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168731718872.381.15217621089826379862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bab091e80d507b8720e74f994d765adb7c97759874ba45d15874195029ac81e
Date: Wed, 21 Jun 2023 03:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687317188
