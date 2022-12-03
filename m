Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9CA42F44
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AA56C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670080854;
	bh=U+jMa6wVmVfMF3YWQbApfJ54+dHlhaty+OTW6j5oslU=;
	h=To:Subject:From:Date:From;
	b=KRP1kjkZz/DApZbccvzjNgHTysFB/JIDOFZ8owKY67VL6NNLjzvJevauBA7K/UVIm
	 nkEiXgKMbYO9a2ssaCGZiKlHVHj8xgeJYJn6pDuZbdgfrUoBVXFDNdoRZMu82Et/ph
	 m9i2OqyPGD25pEOd8z6I7KHH0SV/oJ9oUXJYUT4LL4xh9TIM8NHbQTq28nkv2XIuEP
	 xf5Ubtzsfvki6/J/ybbrp52qOw1yo6fkFOy0kRBGNzQTrQDXnYqnS58agHtFKJN5Tq
	 1/PEY4mSBeuXgs9LDcMsMNWIF5ImYIneBvZMZ8QL5LJJ90NF13GGS1Gvk+CUddEhR8
	 h3sNE1sIhXUrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F935C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167008085431.24446.5056897402561456624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ded4f2dbdd171594f34c0ebdfe355b7832f5f0a0772d0e02231e842fcb004d
Date: Sat, 03 Dec 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670080854
