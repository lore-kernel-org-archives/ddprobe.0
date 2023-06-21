Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70FC5180
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 00:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E15C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 00:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687306388;
	bh=fS9SjpYPKmJQ/7ChFWyBzYkEwK6Qe211YUEfxH91hxw=;
	h=To:Subject:From:Date:From;
	b=eBKB25q5/VevV0D3gdAfxkYu615H2RKENpi3K7jV1caSEO1mriBE1wol6+1wGfjYk
	 6DsSXndo+emMpf8n9sECZK77Dc6aQe6T4LLsj8YetdXUy96KfMJ9OlkBtMffon9B7r
	 mmIgJZ+vCjR2ejdM8v5e4uVCJM6wruqalBuddBfWDDr06eSgQZ8o2vG3LomSTylSvj
	 c4MrthswQmQZ/MB5bwEXTV2IdmxPYpqx7LkRLX9/FLtPlunk/V6NqAzkyi9XlNpG+a
	 DqA1Juy4g9ZevCFjtp4DwZSF2StN+4xZ8iOH0XngK8g6ljMRFzxYMAS4rGoEQhIE+g
	 cr/Wczw18GW+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C22EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 00:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168730638871.19343.12594233996451068899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fa0f6a902235d1df11511ca29282a0fb4829e15726e26e07634fae0c28ce9a
Date: Wed, 21 Jun 2023 00:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687306388
