Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7453D96A
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mg2Gmzhb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7698BC433C8
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702300696;
	bh=7aJv+aggM4BE5zRL7RkNigH8jl8irBIjDvFVLJM6fOc=;
	h=To:Subject:From:Date:From;
	b=Mg2Gmzhbi+YgvxQY3+a+jFDFp4c3OkzfS9A7bFxwQjyKIn3LHOv2QhDvP6i2hBNIs
	 1XWtu7dkKjQL6mIOHEluVvkEoGnWuPRMn/6d9up5XeGDDiLAOCwo6Bld//NbzQA1jB
	 yVbDK9bhO6uGpfua6oBuLUKCTc53lYHGIPodjB2CT/eGXkdPCB08YEbFdWbfM3yZjj
	 Y1RbN5fURQFeDVe7E0cffR5X81hmREL0gMW/1+GKBdrvXeR3vx9rSWAL2/EANcwOzA
	 zztnlD8Ocm7pohoPgqd04I7KEYlvlfqKad0nzqGSyEHr/ZRm9s5H/qDBI7aqOlSEIS
	 bp6rWGrUtVokg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C61FC4167B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170230069637.16050.5962928824254214724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e7057d809b42c446b53745b146f9176da90650de0e35d425746a2604382811
Date: Mon, 11 Dec 2023 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702300696
