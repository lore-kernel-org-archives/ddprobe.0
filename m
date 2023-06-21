Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7659E1381
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 01:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5B0C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 01:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687309988;
	bh=S73NmXmSQkfvutovNY3QixbqrbvpHsu4pCc7cOUmXwk=;
	h=To:Subject:From:Date:From;
	b=WGRInWBIeT5H6jptzxYmHr8ETAzxODY55rfQRVsyqRRQX2hHKqDe+Vn/UVz2+QqMJ
	 Yc924zl8mXNpxq/Mftrd7rJPvWgSftZj3irfnIbtkCbBm1+fKQ6sCjcL7fzPIsV3Is
	 LYWQIokXs8AcgcrAig9emuzNVL4I8g6jkOd+oZnwwIsTV9BK/bkp8m0XDaqd6wWjN6
	 APy/jOZ4WQN6TMO6bQIkdqig+4/kP68Il27xEaShzpe4sAFw7XmXwD6yxBOeZmIWHl
	 omUu/zVoJe3FkTfPGBisRIJdMvlfPxbwSYyDunJ69ikM0o8J6zmdf1J2mN6jmJ9o2q
	 MNxY2+MMZC0/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFFAEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 01:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168730998868.30461.1541912099273102061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8751c6f322ea82eae40e827d7c943df568b7a3ad539251954f7cc92e90f2449
Date: Wed, 21 Jun 2023 01:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687309988
