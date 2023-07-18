Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7493413AD1
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 17:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2179C433C8
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 17:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689699669;
	bh=GHtjhCGBOjbeQBFhj2XPvIJxqVrae5IZHs3nyEY0WB4=;
	h=To:Subject:From:Date:From;
	b=mEDVPswANDDf7B5CJi6qJ2yG4TaS7tLgZgOO+L1ugWOr511xaQgyLu58nnQIEvHVr
	 ag3zKonyEG9WciUjARdxKSij6LO8/OlFFsJE7UZngzZSeDZrkaKW2CXgdB2sTrTr6A
	 26aXJirrXf4OdeFA6PgbZ9L2gTUGylqaFtu7DkdA4sGUKgotko84mDHIVWRKClUcsN
	 QGoCQr2jFwz4hossA8qYDInkAKbS97n/Wg7Q6a8nbLklJTZSKUv/P6xBUdphG9ahc/
	 fVMEKHqdvsYQl3RqkrqdkyvG2/AtXuM7tEuIcg2ueZFAekkSdBCVCz9VA+Fgky9hRc
	 Qbwj8EhJM5NaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6568EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 17:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168969966880.5310.15959269022742178329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d11dbdb326250982aafd80f085b0ac9ae859947b1bc11e33d3b90886dd2ec7c2
Date: Tue, 18 Jul 2023 17:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689699668
