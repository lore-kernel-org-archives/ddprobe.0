Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D456FD8
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7670DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668373854;
	bh=kVtjtXSLcH+mW6AyN6BcJHpEDrcA0ELLheKodulvzCs=;
	h=To:Subject:From:Date:From;
	b=koRsbUxl58PVTSZ8klt7OAyw/SQHpl2oGFKZNjlpKiATadYQ/ObKosuHf6qylJxhX
	 0qd57oNdD36ceI7msqnFjG8E+Pn6aMH9tHoLbgskZN+XJv2AYz3s+9UQWU9rwXJpfo
	 DXZRz/xr2Opap9jvMM0LITzfEfQN/3/kr7Rho0j2BhFIVFj9axwVa0iO3a4K0raXdm
	 bYStNjebEdQlr4bVecqyfgK71eofRY7vRX3F2oBsr03uzgK5n7mkxoaN39tbENaiJN
	 x1Fkh+Ixlp+iBWLHZ3hwtWFwWNJKGtOonA5jV/WfrQYp17FtvxeDuioRaCSkow5Kvn
	 TSGJi5jJus2vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58DBDC433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166837385434.28999.17117315943316845011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275523db665680d0998ae6c03a524b5f8f7bf3bdf21dbfe62165583b3a9b9c70
Date: Sun, 13 Nov 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668373854
