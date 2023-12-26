Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCA25681
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DyJhwIdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87955C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703633896;
	bh=Zzy78jOREFdNJF0jE0NvP2j1KLwer5z22a41fkblsmQ=;
	h=To:Subject:From:Date:From;
	b=DyJhwIdfXlZeJ5Y8haQ7q4CGh50TTU33uhagTn4kjNJn2oiCaPvHLh5F3JliOFIcp
	 tWKmCH3nVAwLUJc8b6/2dypNqc8cUqL0vRgfD+amvC1OrJwyy2jIOHeuj9BuIzV5Nh
	 Bqdd0GZFzDFYL0Suoct8Ym7TH5ZC7YsGnJMNEaRxQeJ5v9qaMuOfRcSD9p4FZKWrEx
	 ZMAqXPYKaFotfn1+aOlWIRvcavZW+5bk8CO+u2MTnhJZij1yVavosPnZELL9lcStm9
	 55WP/F1CPSLZCeGB8BGw757aAR1cOA3rD954VE5Y8kRn7/XwwpxS+vaBZgbuMyd3wa
	 uoY6wgQzU12lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69F5BC46CD4
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170363389640.485.11976790234323263598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1baf3a2ee1ce85fd288bc9eb39d85d9d283a316b01bb7dc7f574128a835388d
Date: Tue, 26 Dec 2023 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703633896
