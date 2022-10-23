Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C267B
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C91EC433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666504253;
	bh=/j7zC3WNyJz6rsy0E3ZmmibpjvKhaX+84OmOiC+xpVo=;
	h=To:Subject:From:Date:From;
	b=jdL3wMLQoUhG+wcbfhvInUMqal5ItH6TxSJpFQmk7OgWeX5b/8xItdFbQx5o2Ee6l
	 a6Ia13Y3cBlAeNZqFa6OX+AEwLoSvf7pqlKaZ/vnSSWW1xOrZ0z/o0Y/7WVEH6San+
	 NNSRBjfgNtNw9pd+b4/WgR7GcQiejiVvr9Sb3qko33VGGIj5aLSE6cCiHVJdd5owm+
	 Jn8Ek0dFiUEYhI3Ci+n5M9XyuBD+jf1xljZFTeLPkSDEtCOUPHCnCzqD2Z54Jh5B2J
	 XNjtpfa/EWNz6Btg+7WhE5+0bXa1JV9b+QeQUWdWspkNw/yWVekmd8wtb4TSOMaWWX
	 y580SyXfR5Mew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D967ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166650425335.7286.4212378034672144398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba452ad2672cd08a9e03072b2d14643d5f1bbe61219433447b2bb196a808eda1
Date: Sun, 23 Oct 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666504253
