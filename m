Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F97C7E9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 02:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D7BC433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 02:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688612228;
	bh=G/7L7Bw9MhKq7aIZCZtNYuC8SZRWntLwkQ4xjUaaZu8=;
	h=To:Subject:From:Date:From;
	b=Jym8CXniGMJANXzQ1zLsOwsNtJQzmGLoMy6dm7zj62x9z5IyDdAMCiSLE5pbuM3M0
	 vkfpVQrPYu6tyIpIOObAjDtRAKXrDH8vZdIntKaygu01vUVx/qwUgweQ9L0SnMpUW/
	 kCKLrlCy66z04Bf1Xiz4OUz3UTakLujPgIHCPF8fsxNnXSyz5hAiQLwrvN8ynnleWs
	 EVCrq3lOcUsoXBAgiR8t6zQoSC7T8ms9W4DX+foMjizlIQcgTzO81w+Uj9xlvWG4Ju
	 tWnMl4SbDR9RkFuap4wRdkyInJygG8yFbptxV0Q7IMXQf42hd8u1WNLS0s70YYsX8f
	 7ne09Qupc2Tuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA57AEB64DD
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 02:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168861222868.22223.14695830364950298505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe8ccd5c478d824f9f9d37c3c158c3b3654ad6e8cfd0f1e99a425a1184644117
Date: Thu, 06 Jul 2023 02:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688612228
