Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C9C5A6F
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B63CC433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662831053;
	bh=oDzfowCh7fdNm1s96GqLugsD7gNZf4cGJglSWqC5jhM=;
	h=To:Subject:From:Date:From;
	b=U7if9VhEfBreWxoxK5pnGiRKJCUVUyk6DyBcF4P+DVQNr0p0Kk4WYOiNZMKKkm7T7
	 OZhXKYE6TMKkycDJIJvrgG3DsPTosWjdTZbbyofT4fXu25eRZ+X7TlkKIzU42erhvU
	 XB4DpnnbasZ8b5csao7x/bpyxju1NdlNLma4bTnSRmICYzAAOXmsiJ7+qvImjl/wE/
	 sKOiHOcJUHHbqZi79VCzmEBMAmyyhkzOAhAbqolMPuZeG6NP4UJ/iQzmxls8B2sKeA
	 z6BS36x0TTYV+huiXQL4Xq8Srh13u1ZJr/XuAxi78EWcMBwrcqq5tsETKNn/RYCyAn
	 qO2WGLjMJPU2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 525CBC6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166283105332.25472.9513955841705695624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eb3c952ff1fa68f2b10405c36d0b20bef658fa92727689b45672d4c4fc216c4
Date: Sat, 10 Sep 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662831053
