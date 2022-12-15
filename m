Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA10A7B
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84E7AC433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671071487;
	bh=dTDsNXkKGGeop7ghacLbBM0iB5SpjWF/6wWbLlAN938=;
	h=To:Subject:From:Date:From;
	b=ESrD/yPLlbUNjs+Gxsu8vbeewJimuXcZ4ifcdku+dwffqnrFSNIoXpXJ1M2FNHZT+
	 AYIixoRJge5c20kmEFrGiTsKvuxJnQpw6GlO0J88X6aIjgeIbIeoCMSfjvBttCAuZt
	 kXYm9SyRW9MdrHLVmrsbrbHE4bVCgB3aBCWjKBuDK6dEl6A8ijiYPeLwNiWevAzxfu
	 GsTo/T2zVGaklTIHK/mM/HvfjQQa1iXPNrBgHkCZsrF8md9xHho1TsiZeBp5OP2PPa
	 Xj9FyOt1vMuqG2nZ6d6Hu4tBXzNNej6wx+PTY6+Y62XeKnM6Dk7Y2CviaKnLdl94zt
	 M3k15Lu2bzvYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67081C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167107148741.32097.11288001779835569959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6dd2d9144df63cc61a1a17055f4e5b349c4ab674ff4057f6fba353ae47d647f
Date: Thu, 15 Dec 2022 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671071487
