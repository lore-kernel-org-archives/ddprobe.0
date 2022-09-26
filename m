Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFECA2117
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E854C433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664196053;
	bh=cxh0hGm1cG5VC17T+tuzXd+7SR6ZKN/aam9Bns7D0R8=;
	h=To:Subject:From:Date:From;
	b=O8gTSNh2PmMRbNmKfpZshAmgcrBHqlXSbcwXVXGxuBxIKf8j/Gkq6KvLRVW2QpxQM
	 VYuXaHphwgWjEJLBhXoHtQnQ5KsU3Bdt9jUaavDyXi+lBd1N6VNfCKgFUC7NILcEp8
	 Fnb1ePVyzdGohNrsmav9vhNTnrBLKjDG3KR8Gjs/r7Ap8BAGuN1MiLHfHI2DhacBpq
	 zAMEc736L2XlpI+kV0nyhsa6948StUIZX4cNE5O3zAEQuDLnZFkGCIV956uT1yIM0x
	 UTF3kax/kvovIz+cllmWHQ7SN4SP7ocOH+xD78bMN3nmcGdMeVzLLtyWDeomVW0ix3
	 XtKat1avNcG/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 543F2C07E9D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166419605333.19300.2054896846882392607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6181afdeef4b16fe4dd4c87066f66eb81c673e3f8b15a88432f95e33f69c8a5
Date: Mon, 26 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664196053
