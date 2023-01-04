Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0581637
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 883ACC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672807287;
	bh=fZW33FkugsQVRL6ZVgfDlumbGUYsvxNudDMms+TGgy4=;
	h=To:Subject:From:Date:From;
	b=i1zwzQacOUKwji3KIIqALHN+XF2Nygw4NiSmeukpqSrlCznW9j1xB/uXWnL843LfB
	 Ly4j7pxgurWlC60G9eosdq9d7EwWtnUtDaDOVpLeGQvyb99nqQ91FmqMdH7kImSBDy
	 99MjxnZvpMKENeINxWjEGaL9rBO8/h+18y3f2449ogBQm+A6STdQ8LpsVotKc3qgdC
	 EtYgd54pMtgR+4KoULdmOBpDzPmj245ifCdroG1ot9HZthK+AvWbyB1l1XSak5MZEe
	 4MXNnYmfh+hB0MNZD/3nW40WEPwf+1qWOsEf+X8sjqpMz93lTJlU5WQC+gU14gm+0f
	 E0/bx5gRgIHcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AE79C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167280728741.1463.14278617499582436543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eadd474c8e6a435e63589a1aa18d2299d68822c40b86756b797a48b223979129
Date: Wed, 04 Jan 2023 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672807287
