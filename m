Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF4E7C
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 18:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1A212C4339B
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 18:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679335626;
	bh=CGxbMH5qjG5Amrt5y8iotkJTCeo8YEbd92jnfvqMStM=;
	h=To:Subject:From:Date:From;
	b=XZgorqvsH3ngxWRfNwuU7Ce8pOuwpnwKfPtA0XWnVlQgapNUbikeDWEoe5Ymm992i
	 URXFmSdYSQMI4PDASd+DRpDU8gvVH9Thyt3G1SQCNXTOgXCJt2/04XM/iPbriHvkUq
	 HZ5AIV3PU6NW79U299X6nASGOEKTHrulC4mBzQ9BMrNzxrgocj2FzOtpDVOXDFOQK2
	 OvU40UPjJHAoWkYNWrew4Zv9bKb+VHxQz8LSUruHhQNjrONXE4F8HTqbgtYet+DnDD
	 Z9KEMhDv23B2paKnLEi3MRozVbNW+x73fiZgju5+M9boH/fjO6yGIXi2iHUIftB1xd
	 UeoxXno/DEqjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB582C7618A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 18:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167933562593.25579.2051669340930782056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a73af16bd862d47381308dc0bcff0cedc5924568df31ac1722e6fd3b1e5d6174
Date: Mon, 20 Mar 2023 18:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679335625
