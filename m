Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5FF13C1C
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76AEBC433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664062253;
	bh=Ei4v4XA6Iw0vK85nxoOtdNEs4pMTnxjrWlPrKgQ3Mmg=;
	h=To:Subject:From:Date:From;
	b=ojMN0AMvDbZR3F+VXiNWEj1Ozl+iVCCT1zPbG3l+ukDuiQJThN4wfGJ12n/Ilzpx+
	 83+Tqyn4z0mNH7MIKID8rM6fc2hmmfNlSg2l15H4dNx1ON6szHK8YDt6mVlBwL7IMd
	 1HU8n1A4FUdk1xmmnE5qjAyzOUPZQ6H+es8K0WtfRvjRL2brjrMO68cu0FI/0nJi1N
	 CKLLNIzvLSQNpLBUxbIejlT2XNBiKcxiNTcjIlXw4vxQUmvcHHVEKPrz+fmRKGIfUe
	 T/no4M9k7xDGzl83mB3MdN2wxqEZO5tcblxH5SihAXZQvnvpHMKqxGoXdydU9uOY8i
	 W/t+OctL+1n5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD1FC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166406225335.15855.3762926587546386777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f3f695cabff9eadcbfaa7de0005969a73900e387b3502ebb91b52cf57161891
Date: Sat, 24 Sep 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664062253
