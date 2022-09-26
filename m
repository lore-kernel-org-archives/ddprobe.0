Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FEE7F
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77400C433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664158253;
	bh=U/ZAUB9G3Kt4l4MM6QOFINCiI1zJMbXjorfMfUrFLhY=;
	h=To:Subject:From:Date:From;
	b=rPkpRo7q7MZqr8VEtYBtFCiOYE4wkgV5bsiZL+ev3czPPe1qV4Yf6lx0kgCwaarD6
	 US2EHkPDDcfpD539lOLs8gIYzjkOlTV0t1o3o3+Gg23fMh17C4nqUqwu9lMlOlZryj
	 H+hR0/7oC1AtNtBDaI2aOXEQFGzK5+diX16/5UKijf0GvhBdRjSJR979lkRSWel0/G
	 6h4y4OPIDByOtBgSWHlI2pTrzunpIXy4w6auNc019XOtJAexBygx1msYqkFVYHRlXb
	 iOUcO+3aGljAk8JIARIwBVBkt50FS1llD/Nt1kTJvjgsWy5NB4SQS+y73/CSLRTNYl
	 gWzDI1lfhpu3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 595EAC6FA82
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166415825334.6253.4683846302975003160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85dd82de8d837858219caf5386b07ab118a786303c720420d27ed65a310e0e17
Date: Mon, 26 Sep 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664158253
