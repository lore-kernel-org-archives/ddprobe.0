Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C94376
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 03:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7C89C433D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 03:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675048385;
	bh=OLcKkrbs18kdfa3HSYccBXeOE+SIJ0R7dSWssHUNbyA=;
	h=To:Subject:From:Date:From;
	b=Zjrm2FuOUpDfTzHR7kt45vx8G2d6iI37qc2nDbLZodNBoFLEbZr12e1KKR/bNE9I2
	 al7DmMyfKxHADVgKFQNFi0q56By/6ZdSnAGIEYU1Y9hT4lIJcfmV4Tdya42zAKpxuU
	 Ewr5mn8m9jICbVMUU0Qk63oVvozwXUfLWFXNLBGd7P21MoRGL62XAWdTLMk/FzegeX
	 EMZJrx2c85zZqgMI7xoBtxSwfmjupzr26FVLZBGvmyLzrGSG7DmvEHVqvcxseuIN7U
	 JNuel11U4Yphu6B5GRnS0B9WvsFsSUoKuBqXR5+hIUoyaQtNFKGOGF1kDs1shVdCjr
	 lrRo0C9ldbvWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC37C54EED
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 03:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167504838577.13052.15616384410557320558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cce0f0f70c70659144b560f030e2727c638762f7b6d5d8a14872ce4443ba9a2
Date: Mon, 30 Jan 2023 03:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675048385
