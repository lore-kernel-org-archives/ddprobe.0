Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B94322CA2
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 683E8C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669570854;
	bh=Ihi1iAYahsqy6NMu/jeoiClF3M1LijU2a88QcMv+L3I=;
	h=To:Subject:From:Date:From;
	b=Q8xnILJr3foudXLGXAGKT+sagqr+27uK8t+impxtUoCnes7HDV/7k0vA6B+x0UvEo
	 YDe5NEHMD8WtyIc13Nb2/6nFjp/9HxS+bAeqtUV2hHZkHXPIW7YOYlrEsfURJ12NC5
	 NdUEXmcCMbx4uE2UgG5QQIbD7wUz45TgnfF5GHqjZtxg4janS+FhWrBK1q8jcDOjJg
	 pl7AxVdrQVsbKLAghln4BlC0AgCf5Yu802ccSXR18F45OKWQyQa8BM3bD7s7ROJeEl
	 iTwxv4/4PGxGd+wlmS/sHQKIco1EQf1t5qaOSy4I772ca9iyBob8bVo6rKxKZljFwJ
	 NX6zIQ4BAglqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E783C43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166957085431.24623.12351123669165939619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac8c09a079d903052cc6d7f886c4edd99c530ec14a8c7b407d7392dc6be0d33f
Date: Sun, 27 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669570854
