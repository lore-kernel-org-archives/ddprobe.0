Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3057B4F209
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMh/PO7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88922C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703609296;
	bh=SKVC6lLd0yDKT2Th0J/hhhXAquQef0EKRk2lE7TCOdQ=;
	h=To:Subject:From:Date:From;
	b=JMh/PO7XuoQ9OGUJkeSG7zVduhBSNrHZr0UBS0O7pMihu6b0V4p609Nee+nt8jchn
	 bpySAQHh4IHzXkoLxqzFYvB4uYx6NE7SjWWlvACEAiqnTXO/++C9zLxksVc1dy3vQh
	 m4wkede91tVgj3XZSgK4hrTmvCn4931SJa6lPpAf0XQTptbRBBZDUsjoVxU6JyxYkR
	 PPQfVndLAxqlJ8ISU2MBZCFXTvQPU8wzH7Siti32ImDtC8gCtj8xsLOBRHep56Fi9a
	 41XsKX6qQ/0kTk8vx5RAEQ2DzfZAg6Hzj+gVAo62bmfSQuYFA1zjpWxcYo9lVc3GTq
	 vOqP1fjGQQ43g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA81C46CD3
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170360929639.4791.8551328531784548520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce87a28cb0cc47d17ca1671407c5ece4068796f6f48e43ce2c58a91283115d2
Date: Tue, 26 Dec 2023 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703609296
