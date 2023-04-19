Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED6579DE
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 15:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85C4C433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 15:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681919705;
	bh=vFIZDEL+kYeQ2sFbeFZMiRqDwe6fhL6CzaLJTCjBAGE=;
	h=To:Subject:From:Date:From;
	b=MaO2i23k8nJzqxprAPaERlXjyvx59Z3MrfoclbKDy/Ut7/GZn3YQTVj5yFhg9DSa5
	 ircG91mRq/ngXchLaN5ejqUjslN1bG1SJYSq9UDx6DRNXvrhOtjMCbjIfwmROXDTG+
	 yRNJPycm74nrsINf4V2TyI2trFIiBn3w0Yh9uK7CljaJ664JUw2P/MOBnw1GROD5bU
	 0QLHR1Ij0scsOz+OS6TIsNhYsYNgoWO3mmU03JM9l/IhtXsQSN/PNNAIFfhtNS6RHA
	 ojNYU3rbYbn90hqQvCFFHlX2KUlr/nP558Qu8zYSym5QleJZrM2ihhYvW0/5bRmcIq
	 T70yo+S8MLK4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC0AC77B73
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 15:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168191970576.3805.10124426781185944935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d966677c59822f8856762f34b550de7c7f46c4731241728221e6f90d7361303
Date: Wed, 19 Apr 2023 15:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681919705
