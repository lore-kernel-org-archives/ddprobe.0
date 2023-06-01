Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F9223DF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 19:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0D9C433D2
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 19:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685649365;
	bh=YXybMOtRyiZS5YndzSJvKhnpw6RL6dHwG8LaTZmZorU=;
	h=To:Subject:From:Date:From;
	b=bwZdoL3jYL96QrNDZRswQkocq3lLTtIb3+ejhLXpZAUEEXCJpOW/QEErot2lzuO65
	 Mixl49feK/D/ksKk9D8EG0s/2uLw8p+4Z0jL9o4bfaw4Psx6bRAzf1YKMS+m1uBOoh
	 cvocj5GQNobf1vv3IC3Z+MqzwM6f/jig5HEunrhLzTPYbu+B41Reka2CrgianlxcQZ
	 02UdOSn/5/oaXMmf3/5FXj0+XfZ0EhxapZZeRj6YJpJOeTXbj70afXxLPkJippgkfl
	 pUwXWnnpjSYPkPvCtfY8BOnowL2+blPWzBFplhgIkmauuxONLg3ZSJ+dJHyxhkgBSM
	 2zJAL6oKbqPaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F20C77B7E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 19:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168564936574.31552.2483345222095796415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8622e3f4c4ca559edcd057c3ce4bfc4bd64e0a10f876bb96b7010d5e0cfad277
Date: Thu, 01 Jun 2023 19:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685649365
