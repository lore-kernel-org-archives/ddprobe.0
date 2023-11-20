Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC103716B
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFV9ma3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78CBCC433C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700510896;
	bh=a+LZVYJA0B84Bnhu2jSUInYc+Ssv2R9TNNNjpPHUOLA=;
	h=To:Subject:From:Date:From;
	b=tFV9ma3UErI+UMqJx24gDMTv/dtQs8F5s0ct55ivt6kcxTDxrx7UojWnioWSjg3bM
	 P3eIFL89ojYCfdiyPkoUErl6shtjfoo9GLwgBz9x7ad91NRN1Aq4mAFLL9OaDNhtan
	 7/C99J0pJnVrugHgfRXQ5pJ3nNLbRXrSGTR1+CmjZNdOAgF6goF5ifc11rGBN1bPFd
	 0wZHSDQv21NbFS1JVdRGHnAaUFSCFSKYY/V3JSm9ytVeIglXY53lx0dpcIVWLzzy+G
	 ZvJVh2VapbZtgcA4/HLqw7BahaqP6EP16S3/1KJST/IrbwWXb6F4LD5AnKcJ4rSszp
	 hp//lC62lV7RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD68C2BB3F
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170051089638.16984.7832946707920134978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8851111c4a5032ea8b24f16b953b81152d700be6e9b152484e931c24f8ccd7e6
Date: Mon, 20 Nov 2023 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700510896
