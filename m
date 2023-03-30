Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E262F3E
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 13:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 087DAC433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 13:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680182946;
	bh=74l2OzY7NINjCz//pBZ/+AUyNNM/CC6G5tUFF/dzSYM=;
	h=To:Subject:From:Date:From;
	b=ffw2el7dWtrQymDrXkp05xJ/jtnG047hccxiucNa0k1bC+1EA7Vz1VMJVluYkDAMa
	 k4nazq7K/oGcJ9vtcTYn5vf6bHwU7hsMj+EL2Xa7m+jsBXoC1MbOoy7KJPbCcNdmqX
	 j+cKFjJ261UZgpFwGPOaBvpdYVr0hFOhPDRGBlS2lQoXV2h9DJan9lpal/RGmieac+
	 OeTyHAr2ya1ZvnNtPAyojzBKffQkIkmS2DXaibiBprg2NrDJ5MBkT8JrJVqIwcYNMO
	 4Lgr1hV8rLY3KxvWfk3GVynmeiZxg5XrkoGFoPWlA5s4ohgg5JNU2fNW+cx3fEXidc
	 /86BbmJYDkOsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBF19C6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 13:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168018294588.32236.678566769626559107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1393070a1626d43d2a3677580f368780b21c24d73a2cef9f5da4d1b020f681f
Date: Thu, 30 Mar 2023 13:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680182945
