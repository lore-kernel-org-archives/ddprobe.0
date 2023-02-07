Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BA69443
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 23:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDC64C433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 23:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675813746;
	bh=CG+Td4wnObO+oWFGVx8USL1ISa54B6kaGnS44pEZ6M8=;
	h=To:Subject:From:Date:From;
	b=ZHqlTIjxwrEPwsgcdDxnorAXx/QZuGdmccFqCcRcecGhKu4LvDW3zwYlm6H/RPifp
	 PVYQJh694MWQ3XDNpA85aIBkIqmJF1P0dGhtC7nlwAxNTeT+6pzR1s8z2GUenTFeB9
	 fz8UtDlRbzw3AfOuhk5kQ2nlHdi3Nna/Y6zeJxET+/xxp2H24qZ+MWy8hiiEDEJAwz
	 CXJMoal391zJbmm3nQ2UP6BpStD+wG4MSHhT3+qIUqR6tSRfEdpCqU+wbbcgJP3XmL
	 ezg+1uBSvS3KUEVaNEpPAUZ3I9iNfw+IdWqylmOUbQ8LMczOarDR+TEReqj2jf13Ok
	 F6nK8zjBXWJJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C73B5C636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 23:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167581374580.3213.5533189242096742727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de8b596e0e2d6ade18c7a7fc8b89dfae1c6359407b88e0e8c6c479991a32a85
Date: Tue, 07 Feb 2023 23:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675813745
