Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81A3F23C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 19:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3FD3C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 19:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688758629;
	bh=Lc/QNBR6mjg0FU9gy+a/x3rUqLWwgD2zzSCxGT3hPAY=;
	h=To:Subject:From:Date:From;
	b=gZFvBVY5G9Zd06Iq9i9EvHTApiwXOyVzUuFO4qXrFvSjej1BxbWSVixaDrXtCpSwn
	 aSnLBbRLCB1/H7KL0Wdh/08chzD9X1p3S/A/OHP4yoRBReubuq4n4cqaXSsNiJuqHx
	 5qkZ9OgcYumvdRLf+KyjafxKdajSfGPoY4SsyLTIgeab0aL0cqRnbMv71Q+g+45XFP
	 CdE2wTDuZLOHyccezsODMWe2m7FDaD4/45Pvo4zDxUrVmHVHRmKmCJB3DLfNm03K6F
	 T4mAyMJmZnBQtd9Uewy6d7FEmoEcIfMb5iIMmwGIhkuCd3a0zFoIZGIOT4NLk9FNfe
	 CjXgUQd1hLHRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB110EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 19:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168875862878.8825.11085398637696838170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c660ff71aba8b8b95c0cbb8857e00c18d6605bc4709b6426bccafd02a3865fc3
Date: Fri, 07 Jul 2023 19:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688758628
