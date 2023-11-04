Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB6F7488
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRZTssgs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88D94C433C8
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699084096;
	bh=8U8RnFACoXQpIZ7Qg7bi4H0yTw5T3QoqKpnyAy+3HQ8=;
	h=To:Subject:From:Date:From;
	b=TRZTssgsPAgRHHFeOf5ADHhuhYD5C9T2NX3f04MgRp/cDwJJDHLpgSHdxrjBbTO5B
	 mRtMbgmgHMf0eCfURJrrmnLpDD9UMOUt0td8BsurCewKTXGzFoQq0+VPHRGvrrKkTF
	 aQduJFseilmysVm5biphJYrwPr4ciRRI3h+Mu58XesxswIZ119fcCtsMZOTygo9Lo7
	 MG94Zw3zfHiTw2dnAjhT9uDJC3I+ZL8pLEB0pYSHWtzrHODW6L/hadtGFobR33Z+Gm
	 2flYmC7PbFKHddMJGeXjMo6YmBlFNhl3tX16bbshbuRYB1ZBWmnHSD9Kwx+tyXZh3s
	 4Cy4fbMg8Sm1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B4CC4167B
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169908409640.18101.1229827474591372860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e40742904e679398df3da2fe3a8a501de4705157d51e827ce900c7191e491b92
Date: Sat, 04 Nov 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699084096
