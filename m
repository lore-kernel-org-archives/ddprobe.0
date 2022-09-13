Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD86666E8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80B1EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663095653;
	bh=aQSFexBmAXTwk0NdZjQOQWISFQt07l3MB+vQX0tdGXE=;
	h=To:Subject:From:Date:From;
	b=Vd3yXSpWdX9vn6DnmsZaeIrZM+1eIox7RL0Y1APidfIimeEzqWl64ojGl0DPdXwF2
	 IcukmE1+NTsSO7BYXxFpR44I8v4EXAA5RwjbYh1zdsMp+3Uxz3EgGMYwLt+N6YFUIS
	 p712R5k1VIs2YHEJJ0inJqRy+aw0Pc6fB1sU280q8M6p8yDQuP7nHy7dkUz55ddWLo
	 7qc8m6zM9XAOrcY6UcxSOJ+Lh3J4XxLD++zhAGOYxOq6noQG22/e24mFo9HeHP/YE+
	 g0cPjcadMPQ94JpSSG3ra9rvYYGfpHh/VRB10X9Q4M8ki10BV7yyU1wLaEefX9kl9P
	 MQA1hwWiM2TBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66846C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166309565340.27463.4587039421224601633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ef9bd70b6bec4fe9c633aa9e39e88cc77ea16156712c5a1f61c95fa65b20dc
Date: Tue, 13 Sep 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663095653
