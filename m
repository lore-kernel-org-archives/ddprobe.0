Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F1E20EE
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 07:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E55C433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 07:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675842605;
	bh=Tv1sD4vc78EoBRYEYa/N6OUAu1MfG6L7oN1KMskx82A=;
	h=To:Subject:From:Date:From;
	b=bVWBxWrgE2rFaioy0vbbeD8Nv46N9bksE3x6dp+Vq+GzT7d1T4YsZsXRnY3RUusRt
	 bfwozyK0E1t/z8YeNhxbibFpReaYPCfw6QXJ2UIc7wgDEdO3I1cFSI2IQmHG16HQDM
	 AeGJzs1+OkgRTu2Fnu6nPY8MDiW1ntoL3hNQ2IqbWwyUOXEUvVP9sxfXc7Hu92fir2
	 PZBTggKGhOTH4IDzVjzFNLt3ngg8Gl/iPWqxXaKGFluyOKlPYogXs+l3Nbh4OzTL9Y
	 Tl0rWeygjLgw9NLlX/xcw8RFWbF/mU/+ohzrtkBFz10q9Cwk6pC6k1v9g7E6SnPkVH
	 3va2VmJ8dHqJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66B8C05027
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 07:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167584260573.10237.11255502503435852787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c0d77224897e1f64fd3e738af205fa8cd283273d426a5fb2fe16bb2cc04e36
Date: Wed, 08 Feb 2023 07:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675842605
