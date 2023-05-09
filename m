Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353271990C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 23:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E15F1C433EF
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 23:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683675065;
	bh=XUuZlA13O3fPFcoDGIfjWy3q6ZvvN5jT6cZPEHf4/no=;
	h=To:Subject:From:Date:From;
	b=i0dByRDn9zJH2oJzquiyDLkYtYr27rtCo0vKAY5kpbv0sOYx7Jk1+yabUxRLOV/z3
	 HmnsNupOMNv1SppVv1PXGuwYDT/gC0dZEfOF4u/DCpKh+myfTpbVDff9em+PREcVsY
	 rRXq+de9bJQY0SVtUN2GmQ/roQKVULtErMYZuzuSYtga0DJvAU0iboYdQjDAjqX2Uj
	 3bNe+DAgdrJ47HL5QXjyyaYaAp05YOT7JbCmVAdigXP+lXzZL9JIgR2ITziOSc6Ura
	 wN85uX5ftrieWAzDw/RjQ2BYq0E3hlQKZc/kuofaygrK2olK2PyApo8/lshyGrDltB
	 h0L3woHXgY+lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C730AC77B75
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 23:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168367506580.21599.2538242061708300350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f31bfcfd8531c8f972520ec467c0528fefa9cf900f67b265bca4a53c6c1449e4
Date: Tue, 09 May 2023 23:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683675065
