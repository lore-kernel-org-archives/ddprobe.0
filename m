Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76EBB79D4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 20:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FD4C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 20:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687725788;
	bh=kIvP/7YQefG0Aeu6Rmk+Fpi7o92wdp69RmN4s34kqs4=;
	h=To:Subject:From:Date:From;
	b=minZKd1a8PEMzJuQW933CUl95IOkqSCFPm0dEiK4Od49fYT2Qcj0McDgwKEaPNUfF
	 I/y+Hlu9ir/JsfVlQls3TugXfawly9Wx2hn116cjl1LEvYVQuJuL9AlMsNuxaw5pjD
	 KP3fbO/1NcS3Juo0dNqnqaevrXoE1u7NVfw6/cpyMvw+8WORi5wMVS1T5CoVk/tf3f
	 fRI7vOJ1C6c8wT5UVpzFJRCodqU8lnHK6TyAOmNIKzkda4PduIu0QuAigFRtstVCVg
	 DSB0YacfH2Si3omKOw/PNE4EGI2Fh1qMojsup8c4CIczCNpKdEmZ7Pm621pYuw+JSO
	 u5lbQLy0l5etA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2E4EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 20:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168772578869.30710.10032634984019146060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb752d48df97f0f90c53c78851a6e9a8358e917190f178463f0e11c716b340ab
Date: Sun, 25 Jun 2023 20:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687725788
