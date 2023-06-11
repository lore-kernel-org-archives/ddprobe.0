Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C2F10EA
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 01:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00389C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 01:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686448326;
	bh=USuk+L8K1+l8+aRQDYyPNx0X7UnDgWiKlcqgHaAB7CY=;
	h=To:Subject:From:Date:From;
	b=V6YVCoBm8DYSXoQshd3QXeCpynfq4+FFv+EJcP9/nwD8mDBF26e1E2eYwUIhWSkL6
	 9nh5C+bktYT9zu2vKg8a0C+qHQJFRbp9GP4KQTHxxpC8qFafzB1qlJ94uD1VNiHRRU
	 OAtX4UUkLgNvT0MkuXINS58/WlTXc1sfQdm/mVC4St5CQHKqcFDFyN5Hmd6PS/Kpck
	 0ajIHcuMrORT+XixqUG39Nn5+R9UR4BoVPcy+s7QbQNeSH+UchcSacXth0iLzH9Qo+
	 IZ6oPpRSzAcT4UL5ji1Ki/8mSEGpTG/LZM71QShv++hr0vZ92eGBczbtQvzG5+Qa7u
	 gii0HCmPiTYCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2492C77B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 01:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168644832583.5532.755816583288379952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b46ed2c0c998d37fe8ea0f66fd795e8b0e3c3793cd362340a96840067ce90f
Date: Sun, 11 Jun 2023 01:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686448325
