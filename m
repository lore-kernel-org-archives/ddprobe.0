Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18422564
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85BDCC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673250687;
	bh=V3fIBRKrOdIwp+2plss2l7fskyG9K8xL6l5XKoDuBAY=;
	h=To:Subject:From:Date:From;
	b=YvUSmJh0WUb2/v+YFvfjE6Cc4MupORdk5DGifzzNnIj1kbeAZOpKgnqkkyBPlauVF
	 i8tE5jcL/rz792sL/R1pgKBLio8hlC3LLGcYAI+1954J8D78Vcl7I2PaqX3POjT5a0
	 AuCq7bUBj3UQC1iG6BjtyoufbsLB9yAUw60nA7CcloV9x326ShOorTnnQ4Qhq1cFWn
	 B/trnCXj9J2o7wTffPm5zDjBIOGPQ+EQ8hf55k0qXPRkVAmS/P1EMPtxxS4bSa1sXk
	 siKAve/6YPk4Sc8eKVz73cGRFLTBFJOTYNHMULZTU3ZBs85kZNOPcxC6TfE4c2oBJR
	 U6LhtBF7szBhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69582C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167325068742.10248.12056746842428883277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c5c872e57c237116d00af2e1d4a97de78cc6b0b940a7e95d0cd40d5de3c4fe
Date: Mon, 09 Jan 2023 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673250687
