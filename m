Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367831ED26
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 14:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5EA6C433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 14:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689949328;
	bh=Cr5Su6VcseKbKXVp2cT0f2ZvkpElScp6F/Opuwopi10=;
	h=To:Subject:From:Date:From;
	b=fQYMF8rLN7vfAsNtEk13nhDvUrhAkXToAwqZQFYjzdaUQm+kzsq9ml54jseTmjajo
	 1xtlQFLBwlfgK+LlhvBcY72sAePPEaVRaoTwe1EcmXRo8Ure7CLuusiLSH+zLYdPVh
	 BAAu6u4pSEXedeHDXgibZh13XpJKK/DP877sEP/nsiNjVfFyqf+hp575a8Kaj97+il
	 SFQ1KI2ewxQW1Tf5VjmkLbYCT+iPrTCI2AvkSiMXsJw0Up3ujwbxJc+7Ocrj0f8r3u
	 J01JZmSB9fkFmogRRzP/JEdB7gRD7XSAiCbb8iRLk7cu8ktU8lPezE/gxJMvcrbv+q
	 bHWXHrmGQp2lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0A5EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 14:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168994932868.1007.3045073276766320913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 101ea162c414d263e6ae92cb42e827abd82b3b7f1ff489966e837011bf05a5b2
Date: Fri, 21 Jul 2023 14:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689949328
