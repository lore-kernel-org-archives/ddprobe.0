Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F5E6AA3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 17:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3716C433EF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 17:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675099985;
	bh=s1ugrQJOSGPp6+Qxwk1BcLB1UajGduC17YvRI05sGc4=;
	h=To:Subject:From:Date:From;
	b=hLZTT6fYGS2jFxRhcvlLN91vva6GTlsHAircsksLS7JTmPLKmWygkDZxvmsr9MFYx
	 WxtHO1Qm08QfzSsUV2ezIkWNl3lsj83/OMRfSBjd/rb6yE5VPxjAoa03gBvN9PyRHO
	 lTvYaUU2f/elbDhRVvG/sFuCWPg5nTZV+vrUq08Zimpq6j5XxF4T3rqKzWjfNWPLSf
	 Bw8PRJ0dsBFIihMMlXegBt0kXq5jC9OR6Oxm1G4sp+XiqzTnCXHgLbP7hKkhp6gk6w
	 /oN09lUB3KRXvx2I049FmDHFR3Du9oS/QnaT4dRLroAoDbwS/Sv7lslOwVngOHein4
	 i4X5u9ZigacvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E06C54EAA
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 17:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167509998579.17001.15707029483791469558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afda028aaebbbf2cde7bcb5ee45bc3317e0d6138ed1f188c4454a9f195682d5c
Date: Mon, 30 Jan 2023 17:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675099985
