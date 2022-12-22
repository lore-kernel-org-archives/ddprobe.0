Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D2C33E1
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81EA2C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671750087;
	bh=ltlgoGvffkbpkK7RJwcEzqhoC8YsG+fOgWBVicHCdFU=;
	h=To:Subject:From:Date:From;
	b=cxI0we0sh1wLyP1aAnPSWrMn+jUvyOX56HzgaUuTWVqfTZaoMi4RfOCYECvP8dr8b
	 WpCPV94jw6+OcThGn3YrIy9XuU9c7157s2kIboQsP46Wo9ggSvD1WD1ybUVOLAag8P
	 PDSx05B/0NksUR9lMXc7jdvrYGnLU1GFInqoMJGQJinevfuavkFWPxSWZPt9LTqvDO
	 BpRwKvkaiBL/F53giVy4hDzUNd9inWZ+KkAKdu2S5cdi2CJbBOCteZ4cQ+UpsfJ7N1
	 K9LllW4x8s2UkNIEYi+06Ma0IqlRB9u42Md4wyxvYtb7HvvPzpYnC6Fa5b19JfSALW
	 qT6jQT4tmm9Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65EA6C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167175008741.30881.10875778499895315080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d668387408c1b5195ccec9f5e7f3d41953435dc6f3f5895690b0fa2d7fc2b1
Date: Thu, 22 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671750087
