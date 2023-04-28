Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333DF2CAB
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 12:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BBFC433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 12:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682683385;
	bh=YdjowaKYm4YXi4hDjq9giXl4eVhBEl1fb/Lt4WRVtWs=;
	h=To:Subject:From:Date:From;
	b=kJDSrFalUh1D21rQYMyg+fd0DRppe75luLhNivnioQF9zhEOywbf3BK5dP/Jckpuq
	 V1zHhC5QBOlfBhvvVd/acPic5DXjSrHfsq9Q4BQEvhn3RhUuwA6n1eXCfPFSSSaf/Y
	 nRQgKHfHWyRKhKva53P1TqpiaALEZnOtc6BFDzlB1qbLXBssrE3+OIxKqpd+rOlmZf
	 Wq/52bZM5gY02YIs7ZNjkqM1esiSN0BVtyUPyeuLguY2y3jhuKPtNbjonxBYHsdsvr
	 Cza1DvDr+AtSD6vM5disq6SnPup0zY9qXD1BeTeUDVkWc+r3T6Gr67IlXqp5Cz7Wy/
	 xllzisKuDJHSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D4CC77B60
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 12:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168268338574.6140.9816731306520097077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09dfba25721cc6ef620f2c7fa9344f4035045512da1c17737048b1d7a5933eb8
Date: Fri, 28 Apr 2023 12:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682683385
