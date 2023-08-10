Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E071DDF0
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 10:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C57D0C433C7
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 10:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691664788;
	bh=PFqelSBKhw3qY6LwQ1ECI2wOzyhuJdojzb1JAgz3y+c=;
	h=To:Subject:From:Date:From;
	b=pj/BDOxvuqFOa+yW7FqgT027Z45YVwqZuRX3Gr7bSbz1ArlnUrCubZCLqUv4hmf1G
	 zHVaQbipYAVOJ+OGJvzU5KsSs0hien4csyEqH6fXZZ0s3IRBxEm1ShvdAeEOFBsO3Z
	 zR2QW0d7qqapkeerZIM62JvUQZBDN6gJK/oNue1vxUlOnhzRWtJlGVGXdgn8rFv3rY
	 j4df9b59PS+thAEnEB1srGS7s2omaPffkr+Iq3X1x9xYX6UThkbtOvS1q90iFLwNWO
	 ltMZTVQpKq037RunWOe0TbdcWN2nOraFtHoJbr4EXw/a0DCbFpw72oxDgUK70GWu9r
	 LqigxoUzsKtZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE64AC001DB
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 10:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169166478870.3816.15244225272057617865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54f731028395421078a1fb264deea6ee46bee3bc29d9a52151a725001062640
Date: Thu, 10 Aug 2023 10:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691664788
