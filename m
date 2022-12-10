Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8DC9ED8
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86AA9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670699487;
	bh=ZeVULnjV83g+g9f+Ao3BVBjtGfQgpz49Bo6Qr+p9j2o=;
	h=To:Subject:From:Date:From;
	b=o1sRxD3Cvp71eO2KQQbWcIFVLF2vh0t2oiitoaw9ucYDFrZGXF12/kcE0YKKUKz+T
	 f7lfdBpdveLgeE682pJZECCGXIne7VvYXjTfT2s7BGZuZZh6GdLr77R2BvIIGYLXVR
	 KIKt0pXtYPkl1/SQLksXheVAnJ0UdQRVVQUziMar/TpqSiGfyFXRFhNxq+ZM4oCgXM
	 FfvSmDQf6O35c/w3x4vISZQiBY8rix5wHbi7tvY0UvkU2YpsoR0u0EiImA/zM6Ag+p
	 sObavCcoLV6MSKr/Yfe1yjR82iiI33CmE3XszFqEf2fH7GmVG0RVKCFI2Wq+Tb5Icv
	 6C+eINKED+W5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6635FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167069948741.11699.17806602802372967521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a5005c964bba4c7870be081966e48f9195617c434758d0f90031a2ff61f798
Date: Sat, 10 Dec 2022 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670699487
