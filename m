Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB9B27E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C6B1C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662539453;
	bh=cwkEosfH8bm2pDqM311evNbjgIpLX5s7M7K1oR/l6JA=;
	h=To:Subject:From:Date:From;
	b=MfgUK0eucFTRJo0PyOmBYwypdwWngZPkmXTj9DpNOeZPQJ8NJakblTpT4PT9fKca5
	 D9QVC2u39c5hJQPPJn6MUkhXTC7/faiObCICe3UpzOvTUh3ua792jJDcTtyXOQA2ot
	 MtvGMBHRFPvuW0KPRHTvgj1iagPQE1Mv57ulKpOO0eYctl28H6qDueYkBdwXVuwIYb
	 Dnn0QroCCwScQrDVIqFnt6G8h3hDbHJ3E19FEyNcc4BstAMN+JiQkbCrUZl5QXbCng
	 SEfnsaWJP5eyg95PmKHlZiYEe7GqlQ2XejbVhdCBkR6JjdgrgDl7fRdM3TK4JShyeN
	 V888QY1v3MbMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BFEC38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166253945333.22694.11058362499140697988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf26b9ecbb73c47f40e4a8aec12281d6fbd9cb9bdac08d4c921ee16b88e94a25
Date: Wed, 07 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662539453
