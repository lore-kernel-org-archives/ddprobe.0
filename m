Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B352A2F49
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A19C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667317854;
	bh=0Qfs/YYmwy//NhX01aJSM/SmUyPBwVTB2EFN4cvku88=;
	h=To:Subject:From:Date:From;
	b=bOLTqTazF52MJqcBMonZg0QhBskdBUU96bHLQUBG3BFYg2yji34eLODNljIdwdgQl
	 NeSDVV7duytFiw26PqWj37IUN/aKAWJ7K9auJjbRtft0s+xau3hhNY7kkBMGl7brEy
	 fy9YY7qqOSrEtytarye5L7cP8ss2zDqr6/lIUkfkBeySizC1dIuhfEnCnLeoQLCaLR
	 MR6Ik9Kxs9TkL0L5BgVUMQpotl0V0C/RHJsCbxyo7jz/jm8torPZM/sUBfRCff8IQP
	 WJ+ZxinrdWxdXPSP3yAjRJgFtbkrR2eMtrGfIdIcJtZKYevMsaX6uPDMhRMmuQM4dn
	 WpUIErLoAAlsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5206EC4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166731785432.23377.1093993797504005528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494ceca5bbef3128c945297b19f545ff4a3b32f6618c4c04c4eb37be92cb93fa
Date: Tue, 01 Nov 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667317854
