Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F360F9C4
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHLUBVLl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89214C433C8
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703979496;
	bh=gWfnElGsdZTdmXB+fDPm3DvD6QE87pvWdZvZ75MN+Ao=;
	h=To:Subject:From:Date:From;
	b=oHLUBVLleqoZ8GA41j46zkujiQKXR9p9GqGCSb933NjovxAfn/RZHhTVkLpSosbw6
	 VaAnh290Japgfkj83MN7yv+goQA/ykJY4wN/vVPCqIc4qDAP2HfKC1/EBef0Crvaju
	 6hMqUJ2JtcFD+nrd/ntb1YZYZzg4P8rTdw31aV5XYDYCQoINUsFX+PqlHTur1tJARF
	 0D3Ne3zmtPZTQboJjJfsV2caF1iS0PLiDNVtbwRPmHiQwiMA/58FYkdlWOhF2glb4x
	 KUhp8Yw/RiYXZTqUoaZ4HEvtpNlAz5En5kk0L8tHeBd4idEP0GFVnHwb2ngRZ5WrgQ
	 iLLNVQew9BSPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65738C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170397949638.12734.18052219541113243779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8016302cc8fea672529f58dfdec39d95e6bbef63d9a2a09a74526faab88f70ae
Date: Sat, 30 Dec 2023 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703979496
