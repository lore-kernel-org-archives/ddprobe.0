Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD7D17D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78635C433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668656454;
	bh=jsApmCO3lN8b61WiQ2lJl5Z6EDRUAII68ej9KSYJt74=;
	h=To:Subject:From:Date:From;
	b=tM28PUNbUPEKJaYZbnV3q7HCQXfi4ML02RpzMuI/YRx/svf1ojTLUhW3mjYl7790B
	 OsQPDNtZ1relcT04ma9lWOpPdY34GSP8PcEXd9dkDFtSPMKWdT2s5dBLOa3i5hvoMc
	 WzhK/ZhLczF1jsgsRHmkQnQ+BmqOp9bR8UR0r2HmVJ7snX9SxnAocuocpHox+PpP0j
	 HG8zYSHP1fEuDu9YlD3WHITNCeqssuf8s6kCvbSJ1+n20ruHODdeokdHpvs8oKkGMq
	 SanhBML4p3DloO5Mh6gDG/uq46+5mgI+nmSjtMVJlqzsB4iW/ITOyFhVzbGQdaFDqt
	 28SveUb+oPNUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57812C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166865645433.31084.7866881773393921599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db3e6af8a0cae6f9eb9a2388ca9511e36dd4d81b61d0e4f2fc9b775c2783aec
Date: Thu, 17 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668656454
