Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5A4C612A
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83321C433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667127654;
	bh=GYyGVN9f6/qNvI6RPVhtvi+te9eEvXyBPdvASavjYP0=;
	h=To:Subject:From:Date:From;
	b=uHemOMUkrtKDcI1ZanZNec6j2yUJxtI+UX8Q7B3UyT1KzIWhGryuqdZ6KMkQeO+/K
	 iBfVwSuKukl8qTJmYpi/FO7iKNNFWRhcBoHpvLnqwiz1kO2jyNHFROIcjH0l+clYQn
	 Y9AhgfTAPVDi9VGGArMCdkfOwfopM03KM8ZJGHGa1vnQBOsZ4lPearJCOmNWFRp4Gk
	 A60WOsEVBnCNmDd/0BDMUtoAx+06iPH1kB556iHkqes5yjga0s9kNbz4+pTttE0Iks
	 JKFnG9fRvF7643UoUqtT8YpC3oGKXV+5b/X3bBplb9cgqz16vPpzQlOz+8JKuUVPgW
	 bL/L9ozfWmgdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63219C38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166712765437.26203.3333989242042501415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d78848e59d761012087c1ea99e181d50c9fa530448a460f130145af63ae3c63
Date: Sun, 30 Oct 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667127654
