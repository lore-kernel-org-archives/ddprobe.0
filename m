Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0161FA0
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 10:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04823C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 10:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678616766;
	bh=X/Ewupo7oCxAiPvaMmAtUQM9sa9xjota33KGARH0oc0=;
	h=To:Subject:From:Date:From;
	b=d3CyluKliJyxeE7YbwzZKs1XA8QlobGe4TIGTYmdRLyhqivqsJimOyy+rYOU4PBlE
	 Edkr+w3QpOzgogi4gFZhmJfU42nCrsr0BBbxgR206Bn5czoLSLpxtydbxmJ/Gy5+wS
	 +u9cgyYzvrNOnSV0/AMSOJbs+ycRSG/YNlWVj7nY2q6ZY2dSIVIwYojhlkB5erqOVt
	 F0kzRu0eosvSg24OUdZ1M6xumzGa5PHxvzuEHxgnmMQUSo44wSPxQ1WHTx1Gt/P5x4
	 QnWPmm4+qeXsQWWF1/vtscusE2vRBiiGVAcHJfxkin0fgdOFjxE4r7dWnrfAShnrnJ
	 crXPIsbzo9RiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB840C6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 10:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167861676588.15768.16165324130295698210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ab23d5a92052705c5191e66377c208e15df77ec4babbf8b439e235f762286c
Date: Sun, 12 Mar 2023 10:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678616765
