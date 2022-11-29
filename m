Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB3508F55
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F66C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669735854;
	bh=wphmQ2HZxT9PVafqg95KP+ObgqBN1C7OGCx25/t3LJY=;
	h=To:Subject:From:Date:From;
	b=JB4MATOtThhPrYQn/Qfr/ChqqWxx/s0iaEtNbg5y6P6P/zZ4DoDruaRnprw4oo+Uz
	 j3RdBxzBnb2f6wtljgFmLQAtlKFECaZz13aqzTqqOjBN/3Fmhx8jiMwwVcRUvKnV2p
	 KvJVMad/R9sCSEQvIazsP8bhyYhFs/m6UEiZp3kdvrct45fhefGqFKfFVhDRfOYVDd
	 5DNDn0/GYEZStGWidXyH5oTiTjrCD7HE+cVB0M/DdEIhC59jEYUsW76ng9r6+P7V4Q
	 tnVRuCn2R2O5nrWVU2gPqHO3iPPH4ChUPZNw1dNjUT1/L/cnmz6k015mZzI/i5N9Ks
	 eWcXeK1jG5H7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A08CC4167B
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166973585436.15228.6867650468976972824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a449eecfa1ec2d2c04cc7354c06c1f39b66077ae9c376e4a4247d8dcf0989a
Date: Tue, 29 Nov 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669735854
