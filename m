Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD39510EB
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB04C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663652454;
	bh=2lPqpB5fmfEK/Kn+8+R4fGatV+4NGwDRPgEb+wK4r3Y=;
	h=To:Subject:From:Date:From;
	b=XaddYN9KIwH8Ht5OtCZKHHLyzvCp4b26NABokmKxtQxpbThEHdSHl1f2NSiBxIvWf
	 HbGGIKw73BGsoCTfBiIenO04dUpk3gwxdg1FnX4rdS/TBpv0hvt9jm9Ez+x86+uDmY
	 AuBdFHxCWDDlAG89POCli/DYjDQdSt2pkvJtpRCRVCHetCV4SZRQyUsBmbkrnXDRHs
	 iGK4sqNB7uwzcDiCKEEzrHpX5is/vl0KeZlj9cx0ROe+bgIkX0u143/4f/PLA4OFPN
	 M7K4mroqRWIBzLKshFpYST8TP8m+zSlUV5OyEvG4zuRvG5oN9i4Qdq0y+fmBKdpS1d
	 whhDfqn+461xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62D7DC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166365245334.18127.6037664596574448015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46d175d3a86c03f4378eb6590336807bf91bee420d1f470a198bf235db16c157
Date: Tue, 20 Sep 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663652453
