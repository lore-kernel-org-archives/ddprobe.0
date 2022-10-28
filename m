Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C314328E8
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F695C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666974054;
	bh=/IjzGHUcSDGZz7MIxQAdsKzZLQawQsI9w6/dMgnxofw=;
	h=To:Subject:From:Date:From;
	b=jh6PAchWEqQIzMzqhHsIDefdyhDo7kkwMVljuKbGehvmSZMcLMPD+Tdy2QZ8rCN8H
	 KVHJs0BajuQSljyS/iV0DIqOtbj5gKzWwdA5f1HlOmCaf4+/lsxhP/QatSbeBzLRp5
	 jxMuTm9xSO2Qno+wDY6A03njAgqe/zzIFSYuxnW9wAu8u2SeotZ9vA+k9n5Se15Dek
	 5puenmWUMM1htCnN7n2/hxhD1o8yM8gW1gEX52WMVg3qRFmatLv7UohXalvR8loiKl
	 boOejBxRbC4epJD8jQNY8yOytSSnjuMo6WEqvNFD5Y/QX7UuWcSxAyOQsakD/rbaSD
	 PAZJLWbuFNgrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58612ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166697405435.7313.4047035358549688220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02751255b3d6d4afe82e248c8fb0f652b20272dcfb92fd29c101ecebac57fd6d
Date: Fri, 28 Oct 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666974054
