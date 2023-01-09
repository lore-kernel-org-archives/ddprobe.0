Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC46D29A5
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E50EC433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673263887;
	bh=1cgw3lLx9EYwMb7Me44eMBBbkgH8BQ2knYsVJERDwlc=;
	h=To:Subject:From:Date:From;
	b=cfb1EkdymOkoUpbG0uVUg3BymuDeAERcLJq0GXRr/46zOrO3k0N5dlgWUuMRrL33Y
	 daySQtOTVM85zIBrXDb7wDp98Ia18BUKUP2+doX2M2aEzYVZIjdl1Kl8K7GmBs//rP
	 yeUW9Y9Z0kgcCefCGswlHdVb5yuSPu0zK0+gIiMAYksCfE8eE9EXZR3eyINIf8P0Bf
	 Q8bSwrtp/0KDrQoYbJt7xvWD5z6CR6qv7sB8JMdyJiOLtbLZ+NTZmTvgwPamSYatkH
	 yRHflkFCGG1Ci3w+WBTIAMHQkoPI58PpF3AuDweSPLVlV3hYbHNYz2vBqii8Rj2Xbo
	 wkbAOoRd2Cw0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7897DC63797
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167326388747.3050.926241645918052331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46394590dd1421c9acc10718b47aa6d187f2dab86ddec5f6999bd42876eabdb0
Date: Mon, 09 Jan 2023 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673263887
