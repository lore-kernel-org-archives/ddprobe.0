Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF4627C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 11:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 869F1C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 11:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661773852;
	bh=oha37SvPFC804CTAezsROC0lCRbV6hCVbIWyxQs1AaU=;
	h=To:Subject:From:Date:From;
	b=MpV5N3SXcNEn9md4DsEPeUDnzaKXu+p0BdgC8J4IknAPAUN5Fbz+CX5jmaD5iDcmy
	 09p2cgZyA5i0eXCWVaPdKaFxcIp+3Ur1SobJhHB3ugTR5WM25LtFtlifNOeb8KyV8v
	 T7FBlcguooZKBPXoiSQj30dLHRSYb3sHslhzNt5CNdPbnM9ipBlnUFtLhXt7TDSzXz
	 57YPp+i3J6nqAq26BR+yNzS0JxibpPLsrXmq7XhjqZD15kcI6Q5tQlUYjllvp9aDrw
	 MSWYJq34hGpREh0X4SV4ZtaHbhGarjN93wcKCm8Kic6GsNRzFGcAppXnkmilT1cT2A
	 es5ByTiMDBA3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67EFDECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 11:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166177385241.18945.3832512700691478041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263808bb4407006b167adf1011af28e23e4542121866f8dfbb09b1f03fe0cdbd
Date: Mon, 29 Aug 2022 11:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661773852
