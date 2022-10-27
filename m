Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2220EC7
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 700BBC433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666837854;
	bh=xsRj7/4BsUx3BYVab/lkw074GV+wVmAGZKwr7RiMPJ0=;
	h=To:Subject:From:Date:From;
	b=Wr8sMsw4UmYLpPavIDNphVUVLPc8bOCqrhB3VS7t5G1NbA5nBeWBNlac4MELuHKxc
	 wXyG3nFAwHWNeUI+xb1ZXw12nrKEACjfVeYOQkWDRIejw4TGqAfFYogaAgtNq56ldP
	 351RhLUEkYvSfUJ/sy9LQ48r49r00OEwokfY4w4AkDF5h1k99ajk5x9C9ndsR5fDVZ
	 nuRkuOgt8AswRcOENi0opRxNoqoUQHT2SvW/PgXMf5LfxRK+QWE0x6mkXprv/+eKT3
	 1GKVdVCWnQE9JB7ZYB2NChMZ+ybN9mJUi/HMJWyQl3VokAcDtB3WZthlIVxsRsEfa2
	 qGjqoRsJwY7RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E92C38A2D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166683785433.8328.2028135133834816446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad31e615a17b8d212e5afca473bf059dc91ebd695544ef98e0fedc969d8966b
Date: Thu, 27 Oct 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666837854
