Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5121BD310
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 15:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BBCC433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 15:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687794788;
	bh=fqNRDWhhkPPEsht4IxRUUx5pToTxLPwjgduW4eqvxow=;
	h=To:Subject:From:Date:From;
	b=P+Zo/evo09f64wQYEC79rCUYW5tz/2P/Fpi1EjvSbRA/ITHxSbQPNeZmZjxMnh0Cm
	 woZxt+6VQh2LkFOxc7IRzkT1SMdol4YS9sztXUwKFJVEyYeEtjHph8a05f5TqnRJ+y
	 qT76ITJqE8JY8qobfPOyyBrMQfHNn2S3EmfO4TIaehXt33iGVV49g+a+4BE0xGiDB0
	 Rw1C6uxL/3wVNBYX6wAmb5lLdI1Z+2BCOpZBDK2sR9G+nqiY4l5fG78uBIJ++BBrmm
	 MJxp8sFNlpcGtaP/5zRgBcX2Ncpu7NfV2DzjkPdeH5LxNp2cdPCJJE1i2YZpWoPGQ9
	 Ss5O+pBpHRgcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C36EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 15:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168779478873.3429.10399159820428245871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3ed732a42f23b15c6aa729697ab272f5e3996de37468fc27d4d4c0279458f2
Date: Mon, 26 Jun 2023 15:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687794788
