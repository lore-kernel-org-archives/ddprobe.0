Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4542115CA
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 03:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCDAC433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 03:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677122105;
	bh=FcKQN8Nl3fG7Q9HQdWPurQzjjVMQTcr07tK8YTREXj0=;
	h=To:Subject:From:Date:From;
	b=IacM+jEDlCOyqxRyilriuej1vkifzUT9qymudC+VogxZTpOcb23Y1UhmkDJAj73aH
	 PmZmghAni5G+2VYVgg4rURjv3dB01rNAmahb+MWpk/qfzQ/SgCS34INY0sCe2zbekU
	 6Dak1YRntvyppRzUqjWJOEMNYDoXxP6DShBxcDquxHfZKWDd7m9orJcYMv2o8TobTi
	 2JOZ6qcLgqc/HMlqhtTKerv4LTzdbWwyTTGdHxYngP4fsmSYriyjhbYkUsHPURo8Pt
	 OTN4Sqhk15Th/vtiFBYWG5EqiFTsJCcffGywMcYY9P1y/1zxR9uQPR2umeDATrFY3T
	 XE6mUcLDgLlBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75AFC61DA4
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 03:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167712210574.2046.5818577316253351538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2539b0c9dba6882598e2f1327f16ecb23a2199d44a40e02f3c1a197625b8489
Date: Thu, 23 Feb 2023 03:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677122105
