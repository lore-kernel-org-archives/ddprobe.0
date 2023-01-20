Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C722E180
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D655C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674196287;
	bh=fqoCJ2XvXVBGh/12iWXIK9Ph8uk9ZNHala3RyEgqQYY=;
	h=To:Subject:From:Date:From;
	b=EF8XOcS3uYEBjIg2Sov6I/UR6/EhpyJESIdSwrDsUWjOzpXlrbIZ1HvEvRoOsf51l
	 OSe9O9rG3fVGTp4+hib89Kbcf+x2mUA/15nnjlLGrCD1NgFTnWMwTQTJr2q6uK8026
	 MLU1Gph1JMasGIs9hK1a43inH4CF4efMSwbwcR1dMW42GLGy146s6APU+v/rwK447Z
	 Ql/YCtVNSwoB6jUiUW3N1h/WAfbfth+oHjXOH7t3WEohkjyHtx75BP28gz1d/5dtRg
	 1+xc+TF7bNWu9TyMGC1yyQv9VfsBNTmuYQRW33a0xRhrW8rVMDz7X37AS8z+EzZMVG
	 o1lfT9Xxhp2UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63676C46467
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167419628740.9860.8308062836806647941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6007ac9a3d85f07ebcd9db4598bf8e21663d5fdc6891a1d2906fed835b9ae3ac
Date: Fri, 20 Jan 2023 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674196287
