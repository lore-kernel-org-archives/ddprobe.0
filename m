Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA43641
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FDB3C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667295654;
	bh=MbtbNPGEfn0udGUdRMQdOG5dRjx7fPNtxSOOqJ4rU/U=;
	h=To:Subject:From:Date:From;
	b=nJ2UPHS7X/8SmOLzkL2+LV6ll0dTNz4wHUQ+Py4JgkCyLUZfMHd3/XEIzja5jN11o
	 hYO6F04JawQTPk7MD7H7fq8cA8NayMM3sdQW8qfgn5vMUW662jAWXySfVztwz6U5zk
	 ne8sQtAY7mRCTGi+QC+sUeT1UtdrtcNNGgmHOgNkxpFby2gWgcR84P2K56zDDQQkNd
	 biGsknaJqPWOD7wh+Zsu4ZiRcaa9BtY2i3RX8u0MHVHvPzYTkzjZC+6uG3VNW/PPQA
	 4Pw4U5NBupsLShVXcxlcjgSUFPU7b+g1eOsir7j7vW+aGDaSMrjCEmuaPmBbUg1Wwk
	 j7M+rXKve89ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536ECFA373D
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166729565433.27371.13779011472071795216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40b405f9e3cd4592acba21ea7795d2b2380c1f82b9031fa98e47a2ab065d2eea
Date: Tue, 01 Nov 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667295654
