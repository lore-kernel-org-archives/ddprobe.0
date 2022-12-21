Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82491FB3
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 800DFC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671606687;
	bh=yIjZSPEdpz2dW9A8nPFxxhv1+ZIlBGJHv7EZLT8AtF0=;
	h=To:Subject:From:Date:From;
	b=klc98lfB/fTGIuTx/h9ZKmI7c4aVLVN8mcDduTK2DA/pg6rG5d54BLAoMCIbrhffl
	 +1vZ2zcUqeJXvUBHb1NItDlVB6hvYpbUwvqt9wEIjUr2xqWqwqxBbT7aDvCQVkXr25
	 EU54xUtK2VDWoRfwO9tL/VaOUYKNeiNFKNhwOVn14Ih+6yPLzG+Fmx+V0n2hArH0+b
	 w6WMneApx2jVe1Hu2diJi3lV9kSQrNUncWiP9D8RosrHy4gSWspQOif0Wm2aHi8Y59
	 5Y/l4jLtqYD8pGu6cMogj5IWe3ipmvUZmaQbAXOwNM4VnD7O9MSuz72qLKVP+iBryY
	 3DWK2Q0wdEP4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 633AAC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167160668738.25318.16777422009476786662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a0cd923822e303b6e41d31272aff0d46137f52410174542fba5f65ae0d6705b
Date: Wed, 21 Dec 2022 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671606687
