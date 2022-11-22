Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2C99EA6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68B4EC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669098054;
	bh=km1EpMRX0Knr2Jkc3d6zQknKcwjdHW4I696zKjFI9UU=;
	h=To:Subject:From:Date:From;
	b=RR2Xr8UWE5XJWRNTpG0R2K/tyHmD7Z79gZIVzaQDECU6Kbp5MOG2u+Zh1naQBoGQN
	 9xI0zr+Yo+u+PtdC63xhRCgUWuuzS1K5uMGV54RCSbfJHhZv2IpFWQmG8QGFfXiKLX
	 7g5u17GJ/NM8YnU1mh5r/SaKWHRnZsVcT5yrLcwMGrWj6UUoUtSKqkLY/EqSTRKUwN
	 P7PcR4J0tNJl6EY5AWcakGGhb9rOUelTCB2+bIsjeqGuCwaXj6YmBNZF21whnU8OWV
	 HnhWY2OlTMeDddnEFP5DfmP9iYyNpG+OV8LRfRS6LZg6DvU1sdbAltfl/CudiA4Wml
	 v3vL8G207XPNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F529C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166909805431.11555.7423247999114982660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee53cc9818e74da03d7438fca36e2cd28a3c731adbc7d8423a72c1c330b8b484
Date: Tue, 22 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669098054
