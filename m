Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349A32C9D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 23:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D866EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 23:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679096525;
	bh=3aQvOHdcCzQkbBhqBl38F8zhKsz2A7KKEgAVlzufvvs=;
	h=To:Subject:From:Date:From;
	b=k7qbViTqRySQTMs1f2b4QoX1+xyuGV70YmMWIgJWpHfovyx8L9zuKloWsEOga/J7j
	 sQoidOWeleGUBq4ILf21cX+1ByFr0cgIwwjKP9XQljh34Df3V211Mflmj+X4Q0L1ES
	 3NEq1toztl1hlRzkLFbzL2LN/Z49B7IajHOq7c8owv7becbmcU+1zyLjTa7aAzLtae
	 k2098rWYMIiOcepM3AIoAdetCR6hRQuvotKMT1n3rG4FbXUXXGfFg1XiyeENkDoBZc
	 nIkFfadhEfvHpBqqJE8QvWLi3fiOMmZgW0Fp5ITiP8GRzS9vwocbm3tmaJKX10cZqM
	 NzaH6v8LVQh/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB27C74A5B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 23:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167909652575.9315.17568681871366173939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273f9566b874803ebb7fc1984388ce303ede079bc4e93e680f2d4a314ec625eb
Date: Fri, 17 Mar 2023 23:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679096525
