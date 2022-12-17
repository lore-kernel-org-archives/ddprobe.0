Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032F836B
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AF9FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671284487;
	bh=toqgOTRzxXQgg5otEQ732xbTDu4I/7RkG2DpfoZgo0s=;
	h=To:Subject:From:Date:From;
	b=DMoWxGwglWB2nK0AndI7XeKz1HJgNltPXYTx9h1PTIGRNOcj7gk4cS2/j4Wz522hY
	 K5Gs48pORG4tRsjOZQa3vE+GTOHZ2YOGnnxVduYFbXe+U1zgQi4WB83h2u6LpUagUg
	 txYqBqM9SlOhfQHTVUGKMWdROJfyYX8INYPuKajoDOIdAyHpvxDRd5ngi6wTxtTIml
	 KVsAZVLuk5VaO2wfLJE1NLxMzje45I6TlER7iAeggCQY1xcTfG1DPaXgcBN6FzTzML
	 uza290ajOVcQ0R1fia49saMyLSQiC0k1eXk9tv/lmoXsLm09iJi7HKm8IWRFYar15n
	 sKHjhCYx12cZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B3E5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167128448741.433.4882020134967530504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7685258154e91038736505607a5d02283364c44531c8327439631a6ca382d3c6
Date: Sat, 17 Dec 2022 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671284487
