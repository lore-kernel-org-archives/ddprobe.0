Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 858492E0C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 16:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E967DC433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 16:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686848348;
	bh=nNPeIILxS/Y2sJu+twQcOqc8R1/py+zJoGMQk0aQBNo=;
	h=To:Subject:From:Date:From;
	b=lTlU6aFXqLfkhbBIdeQZn4y2oVolhDyhCPj9WHhXuNsjO8c+PgfvgWHCGyCafNjyq
	 MrxDkedFTmiRv5ZmNDos7Jc0zXePuXHjT2M1e4wES6SlwmFSzyORE+ux8dLGiaKV1o
	 nF/c5gwad4YoZyD/yI+gWw73OtP6NJSmqZ7Qkt4bW0qp2xG5TgSZBdlRoBX5Tja+AT
	 y7D1QPeen8Y8BFEnoOINK8Eeaho4baxuOJ38U4wn6aPYvPKHN0PkxBPzekYNNpLypl
	 FYQMvplV/CT11DDNXgSAeOyGxo6QLm791RZLJaFfHm5uO7uJGsc8MRGQwt0kD/96wQ
	 KWJZsnCRJogIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D04D5EB64DB
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 16:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168684834884.10823.7492532800934954828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 296a140b15023c670cbafca4a4a7e756761f672c29bcdeb52d89ce8ce55dd9af
Date: Thu, 15 Jun 2023 16:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686848348
