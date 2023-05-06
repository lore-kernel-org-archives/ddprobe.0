Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355451FD5
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 14:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E68E6C433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 14:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683383285;
	bh=V4EEY1EeuJLDa2JPoabFeXTxvcuuH2vYabNuvxOi2zY=;
	h=To:Subject:From:Date:From;
	b=D5WmSd0wCbLQxgwackPRdphTXxtqah2cJO6OQdwrS7eZ9E0NrGRTINggugAyLFfgF
	 Yy8KizwHBzGBltR/qNqYGm2mRoMtPKrvcykGIbGB4EG5+nNQEPvFJTWFHqmNcKZXAt
	 zGXl86QuDui0/PvfEXvBlW3dpd/FaeVfi+4M8dZa4Fn9rEp0DtUB7W5KxQGJiX1QTh
	 lk2wcJgJ6K3ksVOAOnvxQPid1ipOs327OMVrj/6g2wCcwWJSwUmSI4cK9QDQxViivZ
	 dXjdhqz2xFdUXhb2czW0NbGceOx9lrWEf8wQX/hhqOHWjqyHZkrNcABt5NG2Po3zPJ
	 BXKoRGJNWDwvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF126C77B73
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 14:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168338328577.10799.5773514701976103678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ba1c1904230f5a1b8b94d257f56f50b42900d5d4ec5877f5f932bd8635c41b
Date: Sat, 06 May 2023 14:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683383285
