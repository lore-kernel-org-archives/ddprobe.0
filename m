Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D338EC9
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 04:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D61C433EF
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 04:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683777845;
	bh=M4m38dMSaWedFggaFVhWCgq+X8y7qLDIXh9Nm2fvwXA=;
	h=To:Subject:From:Date:From;
	b=O7rWgpp57W/rT8xfEwdcyzESeoOmPUvPdXYt9RyLRatzbU5KW/MWOLxfnn0SH5Wgf
	 luZIk2AXRLewLQGwUt3mJtDKA49NYp3CmAbcMwMFXoNzLMfBoxk6wgfePbsaThhki8
	 NKT8rI4lh+mT4QHmNNL8PEkDx8QOS+H32arhDFTF3AQVa/Bk+uuoor954z3RXQhrIH
	 iUx+zk31Jk8lASm5vQTtUInCzfKxhbda8U7w6zdaJEkhXnrxMwOD0lSNaCMvwXczU4
	 CpQyLesyZyHdhrQ34hbYgAWMrrefQmK25yo/hUHy60Iprya+sKqldg+TNzz1YkE2/3
	 0Op9TLJS101ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6EAFC77B7F
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 04:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168377784577.27614.18111501277294293488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc250c5631e5c05324b4a306eec91f331d20f67d283b8e5281649d47b57a9e49
Date: Thu, 11 May 2023 04:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683777845
