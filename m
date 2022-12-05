Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AFE46125
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7042BC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670262654;
	bh=4xZAHjI+DoR7GzOydWLiPr+3WqxW12bjEBBahjo1sdw=;
	h=To:Subject:From:Date:From;
	b=eIGRZ8H40Ntcy16ZO6hBSo7Z3+YKOM1N8OdanG4cwGZFw7c08KBsVuFV1vld4f6u4
	 D2iVn0tSY64yHGLiSo0saHJdSptGthcW0Hi3m2vlD1LuLdLeel57PxQzFWCBn2ik0u
	 pLlskFp9SP75evPrJLfriy+c8ChElYcMvbQS8enoYz995z9hYixM7sVa4plvJkW3Kg
	 VrcDVQCZt7TJt9m6SPJ/bco1+t3W9HoQ54ciMQEPS7kXN6EgcjOToMHF/CloYzL7+q
	 AjSSMwz6jKFPElrQyJu/8knnLKrWjjEaDsnFqMuuFzfyRc1kwcP4WvwmLPqfQIPOrV
	 RH2jsm/aKRoRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57AB3C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167026265435.26106.17437976609317796746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b53ab3cd92e1d69b202d85b5ed73998d0a0a59da35997ef1a7073cec430d19
Date: Mon, 05 Dec 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670262654
