Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABD2A6FC8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 11:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0BDEAC433D9
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 11:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689332469;
	bh=S5+Py/f+qhXucCayh/ec4trWB8Z5AEX1xh9oXSbvIpg=;
	h=To:Subject:From:Date:From;
	b=YFV2PiEnXsGSG6nilUWOpHFe6yM7j9cYIVKmpR5CLuB++4BPkRCZiOiMhxTBgVYuF
	 YVqJWhxzC8QOTDqGCZ/2E3scI8NzG44DG2dxnFaiPYKSG6MP9kIizDOqPt3WrsT//6
	 K1ut0Cfu3fm/pZ3I8yu30m4jFWo0c5+/r/1jGq6n1DPfNr1arzOLxYL4+D9YVADBHz
	 2A2DRSMUzDgoyorsjmuRhQdfHIM9m8YGk79EZpb2UBhUlrXk3cPo6vSRSI0JhFrULs
	 FlSGRFMF0bTEPlBLjczeYOLeY0YjRbUF7PJmIlT0p+qa73H1FviyHkPcbDJQ/mKHCL
	 EQgRLrF0nQqKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0010C001DD
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 11:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168933246880.6249.1768218230110996806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2089a7fad20cf14c4af9b373818e90668aaae223e495012f4d0c1dd2cc8fdbb
Date: Fri, 14 Jul 2023 11:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689332468
