Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD353AA87
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 22:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9DF9C433CC
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 22:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687473788;
	bh=ds+NmmGZXDBAB/2irlje2lVEDGi2WAJm0p7ZBC/Q1Ow=;
	h=To:Subject:From:Date:From;
	b=Y8heBQb0XHeG/rmIvk0HKFtP1Q5mnwFrPXHqJgBniUIgIW4NhWTQ1Do4n6u6+8Ng0
	 rqN0KyrlXvdNY64SS2QZvHwi5EEDU2LeCmJE9X5iAa+6d4h01ytfjAtBOxBSpxu/xp
	 kHn0Yhy5NTVt0OpL//fMzwYNYzeGh1+6E4v/zO13UUoS/usprwEr/1R3gSsdPXws+T
	 xu/NU5ST2530L+qCDw5st+x7dipXKpISqDVsuMn1KV+ujdGwv335sAyhk6PpJDcw6k
	 Nk6vSyqlCJeCZ6Rqb8Z6yb22CzgwQAjg613UCSla/pV7hfJ+fVGBSNoTJn6Oe9pC3a
	 9ShVNg9lcWctQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5F9EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 22:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168747378882.31873.7741248380247213091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2177fa3a698089228b13fdcf067722ae2f8d958db9f5c23e436d2da630751ad
Date: Thu, 22 Jun 2023 22:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687473788
