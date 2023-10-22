Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE5DECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zdxipn7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C050C433C7
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697951896;
	bh=mmXeV6uIyI1PRItCW+3GpBncXD6Z+YlXXn46dcQZ9FE=;
	h=To:Subject:From:Date:From;
	b=Zdxipn7D8zCvUsujDNM3H4ML84lfdRvHzGft9luSlU3/Jj4pWQJiaviwCqhgbStCJ
	 pbEN5IWOxo5xXn7KssMQrTjjy8TwPUeUqEfvmOdjGAde34jg/N5seNOM5/4kUbey2G
	 hkrg4LyBy5nGlcN0/kiMjmZLlR2ak+OlWoAVtM46DOoLlcNhg9zfdJtFDZVSH+iH00
	 /YcyVBh1y3qBeSIlSMhl8JREJ84xM1bBMcUbA40u8BInDbBh929lVoNPupeGaxN2Ub
	 q/8KDQdgrCiPMroPTR4zascAmlNrBsTctSyN2TzKKlWLs1lrIDeQz1LvVje1eeHGJJ
	 4BRyGtZo7UuBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75724CDB474
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169795189645.6833.18192967532514338101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 866fa743b81fcc629f145ca32463e9004c91462d9d2b43aa08a1e22e52a8d581
Date: Sun, 22 Oct 2023 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697951896
