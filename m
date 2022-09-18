Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E98648
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77373C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663477853;
	bh=1EX1/1FE8AvcIAgTLstdNVb6mH9sMDB6HuaZomMO2K8=;
	h=To:Subject:From:Date:From;
	b=K3FwO8ZOwbKgaWUsR+6IxQU6dOEU8cY06M5onjIorlvz0iM3sIBSEn42EyVU63Tt6
	 TK4EVe1NnBuGn+ZdMJYiAaNLnLOjTcRH0Ij1qH+85f7NhtSUNSM2LROAVXaYyah87R
	 49vVGahb4rVi267YpOkK6ckxyM0lXV27R5zA/oN+pQuS67gowk3s1MCrFVw5Yu5MTR
	 PYgKBaMSXr+D6GCDsR7vHyiz06NfOULSSpnsfSjdfq79XEyFaxzS7o3UCm0Cbq1Imo
	 xRv9y+ay8LazJGAUytz779REtZRu1FCHA/cdeEnz2wwEtQ4id6sTFVOxszym0cR6We
	 3DyfcoJpMfuHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A1A1C32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166347785333.24639.7468464208038985875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fcfb7359b32581b3392d39315d9171e5fedbfd9107103c36839dc2d6433196
Date: Sun, 18 Sep 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663477853
